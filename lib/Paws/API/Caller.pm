package Paws::API::Caller;
  use Moose::Role;
  use Carp;
  use Paws::Net::APIRequest;
  use String::Util qw/trim/;

  has caller => (is => 'ro', required => 1);

  has credentials => (
    is => 'ro',
    does => 'Paws::Credential',
    required => 1,
    handles => [ 'access_key', 'secret_key', 'session_token' ],
  );

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    Paws->load_class($class);
    my %p;

    if ($class->does('Paws::API::StrToObjMapParser')) {
      my ($subtype) = ($class->meta->find_attribute_by_name('Map')->type_constraint =~ m/^HashRef\[(.*?)\]$/);
      if (my ($array_of) = ($subtype =~ m/^ArrayRef\[(.*?)\]$/)){
        $p{ Map } = { map { $_ => [ map { $self->new_with_coercions("$array_of", %$_) } @{ $params{ $_ } } ] } keys %params };
      } else {
        $p{ Map } = { map { $_ => $self->new_with_coercions("$subtype", %{ $params{ $_ } }) } keys %params };
      }
    } elsif ($class->does('Paws::API::StrToNativeMapParser')) {
      $p{ Map } = { %params };
    } else {
      foreach my $att (keys %params){
        my $att_meta = $class->meta->find_attribute_by_name($att);
  
        croak "$class doesn't have an $att" if (not defined $att_meta);
        my $type = $att_meta->type_constraint;
  
        if ($type eq 'Bool') {
          $p{ $att } = ($params{ $att } == 1)?1:0;
        } elsif ($type eq 'Paws::API::TimeStamp') {
          $p{ $att } = $params{ $att };
        } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
          $p{ $att } = $params{ $att };
        } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
          my $subtype = "$1";
          if ($subtype eq 'Str' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
            $p{ $att } = $params{ $att };
          } else {
            $p{ $att } = [ map { $self->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ];
          }
        } elsif ($type->isa('Moose::Meta::TypeConstraint::Enum')){
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = $self->new_with_coercions("$type", %{ $params{ $att } });
        }
      }
    }
    return $class->new(%p);
  }

  sub to_hash {
    my ($self, $params) = @_;
    my $refHash = {};

    if      ($params->does('Paws::API::StrToNativeMapParser')) {
      return $params->Map;
    } elsif ($params->does('Paws::API::StrToObjMapParser')) {
      return { map { ($_ => $self->to_hash($params->Map->{$_})) } keys %{ $params->Map } };
    }

    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($att_type eq 'Bool') {
          $refHash->{ $key } = ($params->$att)?1:0;
        } elsif ($self->_is_internal_type($att_type)) {
          $refHash->{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            $refHash->{ $key } = $params->$att;
          } else {
            $refHash->{ $key } = [ map { $self->to_hash($_) } @{ $params->$att } ];
          }
        } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
          $refHash->{ $key } = $params->$att;
        } else {
          $refHash->{ $key } = $self->to_hash($params->$att);
        }
      }
    }
    return $refHash;
  }

  sub handle_response {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

    my $ret_class = $call_object->meta->name->_returns;
    my $has_streaming = 0;
    if (defined $ret_class){
      Paws->load_class($ret_class);
      $has_streaming = $ret_class->can('_stream_param');
    }

    my $unserialized_struct;
    if ($has_streaming) {
      $unserialized_struct = $self->unserialize_body_response($ret_class, $http_status, $content, $headers);
    } else {
      $unserialized_struct = $self->unserialize_response( $content );
    }

    if (defined $headers->{ 'x-amz-crc32' }) {
      require String::CRC32;
      my $crc = String::CRC32::crc32($content);
      return Paws::Exception->new(
        code => 'Crc32Error',
        message => 'Content CRC32 mismatch',
        request_id => $headers->{ 'x-amzn-requestid' }
      ) if ($crc != $headers->{ 'x-amz-crc32' });
    }

    if ( $http_status >= 300 ) {
        return $self->error_to_exception($unserialized_struct, $call_object, $http_status, $content, $headers);
    } else {
        return $self->response_to_object($unserialized_struct, $call_object, $http_status, $content, $headers);
    }
  }

  sub unserialize_body_response { 
    my ($self, $ret_class, $http_status, $content, $headers) = @_;
    my $unserialized_struct = {
        $ret_class->_stream_param => $content, 
    };
    return $unserialized_struct;
  }

  sub response_to_object {
    my ($self, $unserialized_struct, $call_object, $http_status, $content, $headers) = @_;

    $call_object = $call_object->meta->name;

    if ($call_object->_returns){
      if ($call_object->_result_key){
        $unserialized_struct = $unserialized_struct->{ $call_object->_result_key };
      }

      Paws->load_class($call_object->_returns);
      my $o_result = $self->new_from_struct($call_object->_returns, $unserialized_struct);
      return $o_result;
    } else {
      return 1;
    }
  }

  sub new_from_struct {
    my ($self, $class, $result) = @_;
    my %args;
 
    if ($class->does('Paws::API::StrToObjMapParser')) {
      return $self->handle_response_strtoobjmap($class, $result);
    } elsif ($class->does('Paws::API::StrToNativeMapParser')) {
      return $self->handle_response_strtonativemap($class, $result);
    } else {
    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));

      my $key = $meta->does('Paws::API::Attribute::Trait::Unwrapped') ? $meta->xmlname : $att;
      my $att_type = $meta->type_constraint;

#      use Data::Dumper;
#      print STDERR "GOING TO DO AN $att_type\n";
#      print STDERR "VALUE: " . Dumper($result);

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($att_type =~ m/\:\:/) {
          if ($att_type eq 'Paws::API::TimeStamp'){
            $args{ $att } = $value if (defined $value);
            next;
          }
          # Make the att_type stringify for module loading
          Paws->load_class("$att_type");
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              my $att_class = $att_type->class;

              if ($att_class->does('Paws::API::StrToObjMapParser')) {
                $args{ $att } = $self->handle_response_strtoobjmap($att_class, $value);
              } elsif ($att_class->does('Paws::API::StrToNativeMapParser')) {
                $args{ $att } = $self->handle_response_strtonativemap($att_class, $value);
              } elsif ($att_class->does('Paws::API::MapParser')) {
                my $xml_keys = $att_class->xml_keys;
                my $xml_values = $att_class->xml_values;

                #TODO: handle in one place
                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    #die "Can't detect the item that has the array in the response hash";
                  }
                  $value_ref = ref($value);
                }
        

                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
              } else {
                $args{ $att } = $self->new_from_struct($att_class, $value);
              }
            }
          }
        } else {
          if (defined $value) {
            if ($att_type eq 'Bool') {
              if ($value eq 'true') {
                $args{ $att } = 1;
              } elsif ($value eq 'false') {
                $args{ $att } = 0;
              } elsif ($value == 1) {
                $args{ $att } = 1;
              } else {
                $args{ $att } = 0;
              }
            } else {
              $args{ $att } = trim($value);
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

        if ($value_ref eq 'HASH') {
          if (exists $value->{ member }) {
            $value = $value->{ member };
          } elsif (exists $value->{ entry }) {
            $value = $value->{ entry  };
          } elsif (keys %$value == 1) {
            $value = $value->{ (keys %$value)[0] };
          } else {
            #die "Can't detect the item that has the array in the response hash";
          }
          $value_ref = ref($value);
        }
 
        if ($type =~ m/\:\:/) {
          Paws->load_class($type);

          my $val;
          if (not defined $value) {
            $val = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $val = $value;
          } elsif ($value_ref eq 'HASH') {
            $val = [ $value ];
          }

          if ($type->does('Paws::API::StrToObjMapParser')) {
            $args{ $att } = [ map { $self->handle_response_strtoobjmap($type, $_) } @$val ];
          } elsif ($type->does('Paws::API::StrToNativeMapParser')) {
            $args{ $att } = [ map { $self->handle_response_strtonativemap($type, $_) } @$val ];
          } elsif ($type->does('Paws::API::MapParser')) {
            die "MapParser Type in an Array. Please implement me";
          } else {
            $args{ $att } = [ map { $self->new_from_struct($type, $_) } @$val ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          }
        }
      }
    }
    $class->new(%args);
    }
  }
1;
