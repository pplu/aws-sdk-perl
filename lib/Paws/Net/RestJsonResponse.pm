package Paws::Net::RestJsonResponse;
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

    if ( $http_status >= 300 ) {
        return $self->error_to_exception($call_object, $http_status, $content, $headers);
    } else {
        return $self->response_to_object($call_object, $http_status, $content, $headers);
    }
  }
 
  sub unserialize_response {
    my ($self, $data) = @_;

    return decode_json( $data );
  }

  sub error_to_exception {
    my ($self, $call_object, $http_status, $content, $headers) = @_;
    
    my $struct = eval { $self->unserialize_response( $content ) };
    if ($@) {
      return Paws::Exception->new(
        message => $@,
        code => 'InvalidContent',
        request_id => '', #$request_id,
        http_status => $http_status,
      );
    }

    my ($message, $request_id, $code);

    if (exists $struct->{message}){
      $message = $struct->{message};
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message};
    } else {
      # Rationale for this condition is in Issue #82 
      if ($struct->{__type} eq 'InternalError'){
        $message = '';
      } else {
        die "Unrecognized error message format";
      }
    }

    if (exists $headers->{'x-amzn-errortype'}){
      $code = (split /:/, $headers->{'x-amzn-errortype'})[0];
    } elsif (exists $struct->{Code}) {
      $code = $struct->{Code};
    } elsif (exists $struct->{ code }) {
      $code = $struct->{ code };
    } else {
      $code = 'UnrecognizedError';
    }
    $request_id = $headers->{ 'x-amzn-requestid' } // '';

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

    my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => { 
        map { ($_ => $self->new_from_result_struct($inner_class, $value->{ $_ }) ) } keys %$value 
      });
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
