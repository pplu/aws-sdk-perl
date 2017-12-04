package Paws::Net::RestJsonResponse;
  use Moose;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;

  sub process {
    my ($self, $call_object, $response) = @_;

    if ($response->has_header('x-amz-crc32')) {
      require String::CRC32;
      my $crc = String::CRC32::crc32($response->content);
      return Paws::Exception->new(
        code => 'Crc32Error',
        message => 'Content CRC32 mismatch',
        request_id => $response->header('x-amzn-requestid'),
      ) if ($crc != $response->header('x-amz-crc32'));
    }

    if ( $response->status >= 300 ) {
        return $self->error_to_exception($call_object, $response);
    } else {
        return $self->response_to_object($call_object, $response);
    }
  }
 
  sub unserialize_response {
    my ($self, $response) = @_;

    my $struct = eval { decode_json( $response->content ) };
    if ($@) {
      return Paws::Exception->throw(
        message => $@,
        code => 'InvalidContent',
        request_id => '',
        http_status => $response->status,
      );
    }
    return $struct;
  }

  sub error_to_exception {
    my ($self, $call_object, $response) = @_;
    
    my $struct = $self->unserialize_response( $response );

    my ($message, $request_id, $code);

    $message = $struct->{message} if (exists $struct->{message});
    $message = $struct->{Message} if (exists $struct->{Message});
    $message = 'Unrecognized error message format' if (not defined $message);    

    if ($response->has_header('x-amzn-errortype')){
      $code = (split /:/, $response->header('x-amzn-errortype'))[0];
    } elsif (exists $struct->{Code}) {
      $code = $struct->{Code};
    } elsif (exists $struct->{ code }) {
      $code = $struct->{ code };
    } else {
      $code = 'InvalidContent';
    }
    $request_id = $response->header('x-amzn-requestid') // '';

    Paws::Exception->new(
      message => $message // '',
      code => $code,
      request_id => $request_id,
      http_status => $response->status,
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

  sub response_to_object {
    my ($self, $call_object, $response) = @_;

    $call_object = $call_object->meta->name;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);
 
    my $request_id = $response->header('x-amz-request-id')
                     || $response->header('x-amzn-requestid');
      
    if ($returns){
      return $self->new_from_response($call_object->_returns, $response, $request_id);
    } else {
      return Paws::API::Response->new(
        _request_id => $request_id,
      );
    }
  }

  sub new_from_response {
    my ($self, $class, $response, $request_id) = @_;

    if (not $class->can('_stream_param')) {
      # Object is serialized in the body of the response
      my $unserialized_struct = $self->unserialize_response( $response );
      
      $unserialized_struct->{ _request_id } = $request_id;

      return $self->new_from_result_struct($class, $unserialized_struct);
    } else {
      my %args;
      foreach my $att ($class->meta->get_attribute_list) {
        next if (not my $meta = $class->meta->get_attribute($att));

        if ($meta->does('ParamInHeader')) {
          my $value = $response->headers->{ lc($meta->header_name) };
          $args{ $att } = $value if (defined $value);
        }
      }

      $args{ $class->_stream_param } = $response->content;

      return $class->new(%args);
    }
  }

1;
