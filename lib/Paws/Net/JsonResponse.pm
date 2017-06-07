package Paws::Net::JsonResponse;
  use Moose::Role;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
 
  sub handle_response {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

    if (defined $headers->{ 'x-amz-crc32' }) {
      require String::CRC32;
      my $crc = String::CRC32::crc32($content);
      return Paws::Exception->new(
        code => 'Crc32Error',
        message => 'Content CRC32 mismatch',
        request_id => $headers->{ 'x-amzn-requestid' }
      ) if ($crc != $headers->{ 'x-amz-crc32' });
    }

    my $unserialized_struct;

    my $ret_class = $call_object->meta->name->_returns;
    if (defined $ret_class){
      Paws->load_class($ret_class);
      if ($ret_class->can('_stream_param')) {
        $unserialized_struct->{ $ret_class->_stream_param } = $content;
      } else {
        $unserialized_struct = $self->unserialize_response( $content );
      }
    } else {
      $unserialized_struct = $self->unserialize_response( $content );
    }

    if ( $http_status >= 300 ) {
        return $self->error_to_exception($unserialized_struct, $call_object, $http_status, $content, $headers);
    } else {
        return $self->response_to_object($unserialized_struct, $call_object, $http_status, $content, $headers);
    }
  }
 
  sub unserialize_response {
    my ($self, $data) = @_;

    return {} if ($data eq '');

    my $json = decode_json( $data );
    return $json;
  }

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($message, $request_id);

    if (exists $struct->{message}){
      $message = $struct->{message};
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message};
    } else {
      # Rationale for this condition is in Issue #82 
      if ($struct->{__type} eq 'InternalError'){
        $message = '';
      } else {
        Moose->throw_error("Unrecognized error message format");
      }
    }

    my $code = $struct->{__type};
    if ($code =~ m/#/) {
      $code = (split /#/, $code)[1];
    }
    $request_id = $headers->{ 'x-amzn-requestid' };

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      http_status => $http_status,
    );
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => $value);
    }
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;

    my $is_array = 0;
    my $inner_class;
    my $class = $att_class->meta->get_attribute('Map')->type_constraint->name;

    if (my ($array_type) = ($class =~ m/^HashRef\[ArrayRef\[(.*)\]\]$/)){
      $inner_class = $array_type;
      $is_array = 1;
    } elsif (my ($inner_type) = ($class =~ m/^HashRef\[(.*)\]$/)) {
      $inner_class = $inner_type;
      $is_array = 0;
    }

    Paws->load_class("$inner_class");

    if ($is_array) {
      if (not defined $value){
        return $att_class->new(Map => {});
      } else {
        return $att_class->new(Map => { 
          map { my $k = $_; ($k => [ map { $self->new_from_result_struct($inner_class, $_)  } @{ $value->{ $k } } ] ) } keys %$value 
        });
      }
    } else {
      if (not defined $value){
        return $att_class->new(Map => {});
      } else {
        return $att_class->new(Map => { 
          map { ($_ => $self->new_from_result_struct($inner_class, $value->{ $_ }) ) } keys %$value 
        });
      }
    }
  }

  sub new_from_result_struct {
    my ($self, $class, $result) = @_;
    my %args;
    
    if ($class->does('Paws::API::StrToObjMapParser')) {
      return $self->handle_response_strtoobjmap($class, $result);
    } elsif ($class->does('Paws::API::StrToNativeMapParser')) {
      return $self->handle_response_strtonativemap($class, $result);
    } else {
    foreach my $att ($class->meta->get_attribute_list) {
      next if (not my $meta = $class->meta->get_attribute($att));

      my $key = $meta->does('NameInRequest') ? $meta->request_name :
                $meta->does('ParamInHeader') ? lc($meta->header_name) : $att;

      my $att_type = $meta->type_constraint;

    #  use Data::Dumper;
    #  print STDERR "USING KEY:  $key\n";
    #  print STDERR "$att IS A '$att_type' TYPE\n";
    #  print STDERR "VALUE: " . Dumper($result);
    #  my $extracted_val = $result->{ $key };
    #  print STDERR "RESULT >>> $extracted_val\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      if ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($att_type =~ m/\:\:/) {
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

                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
              } else {
                $args{ $att } = $self->new_from_result_struct($att_class, $value);
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
              $args{ $att } = $value;
            }
          }
        }
      } elsif (my ($type) = ($att_type =~ m/^ArrayRef\[(.*)\]$/)) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

        if ($type =~ m/\:\:/) {
          Paws->load_class($type);

          if ($type->does('Paws::API::StrToObjMapParser')) {
            $args{ $att } = [ map { $self->handle_response_strtoobjmap($type, $_) } @$value ];
          } elsif ($type->does('Paws::API::StrToNativeMapParser')) {
            $args{ $att } = [ map { $self->handle_response_strtonativemap($type, $_) } @$value ];
          } elsif ($type->does('Paws::API::MapParser')) {
            die "MapParser Type in an Array. Please implement me";
          } else {
            $args{ $att } = [ map { $self->new_from_result_struct($type, $_) } @$value ];
          }
        } else {
          if (defined $value){
            $args{ $att } = $value;
          }
        }
      }
    }
    $class->new(%args);
    }
  }
1;
