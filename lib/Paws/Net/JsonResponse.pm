package Paws::Net::JsonResponse;
  use Moo;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
  use feature 'state';

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

    return {} if (not defined $response->content or $response->content eq '');

    # print STDERR "Response: ", $response->content, "\n";
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
    my ($message, $request_id);

    my $code = $struct->{__type} // 'InvalidContent';
    if ($code =~ m/#/) {
      $code = (split /#/, $code)[1];
    }

    if (exists $struct->{message}){
      $message = $struct->{message} // '';
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message} // '';
    } else {
      $message = $code;
    }

    $request_id = $response->header('x-amzn-requestid') // '';

    Paws::Exception->new(
      message => $message,
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

    my $params_map = $att_class->params_map;
    my $is_array = 0;
    my $type = $params_map->{types}{'Map'}{type};
    my $inner_class = $params_map->{types}{'Map'}{class};

    if ($type =~ m/^HashRef\[ArrayRef\[(.*)\]\]$/){
      $is_array = 1;
    } elsif ($type =~ m/^HashRef\[(.*)\]$/) {
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

    my $params_map = $class->params_map;
    if (do { state %d; $d{$class} //= $class->does('Paws::API::StrToObjMapParser')}) {
      return $self->handle_response_strtoobjmap($class, $result);
    } elsif (do { state %d; $d{$class} //= $class->does('Paws::API::StrToNativeMapParser')}) {
      return $self->handle_response_strtonativemap($class, $result);
    } else {
    foreach my $att (keys %{$params_map->{types}}) {
      # next if (not my $meta = $class->meta->get_attribute($att));

      my $key = $params_map->{NameInRequest}{$att} ||
                $params_map->{ParamInHeader}{$att} || $att;

      my $att_type = $params_map->{types}{$att}{type};
    #  use Data::Dumper;
    #  print STDERR "USING KEY:  $key\n";
    #  print STDERR "$att IS A '$att_type' TYPE\n";
    #  print STDERR "VALUE: " . Dumper($result);
    #  my $extracted_val = $result->{ $key };
    #  print STDERR "RESULT >>> $extracted_val\n";

      # We'll consider that an attribute without brackets [] isn't an array type
      my $inner_class = $params_map->{types}{$att}{class};
      if ($att_type !~ m/\[.*\]$/) {
        my $value = $result->{ $key };
        my $value_ref = ref($value);

        if ($inner_class && $inner_class =~ m/\:\:/) {
          Paws->load_class($inner_class);
          if (defined $value) {
            if (not $value_ref) {
              $args{ $att } = $value;
            } else {
              #my $att_class = $att_type->class;

              if (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToObjMapParser')}) {
                $args{ $att } = $self->handle_response_strtoobjmap($inner_class, $value);
              } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToNativeMapParser')}) {
                $args{ $att } = $self->handle_response_strtonativemap($inner_class, $value);
              } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::MapParser')}) {
                my $xml_keys = $inner_class->xml_keys;
                my $xml_values = $inner_class->xml_values;

                $args{ $att } = $inner_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
              } else {
                $args{ $att } = $self->new_from_result_struct($inner_class, $value);
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
      } elsif ($att_type =~ m/^ArrayRef\[(.*)\]$/) {
        my $value = $result->{ $att };
        $value = $result->{ $key } if (not defined $value and $key ne $att);
        my $value_ref = ref($value);

        if ($inner_class) {
          Paws->load_class($inner_class);

          if (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToObjMapParser')}) {
            $args{ $att } = [ map { $self->handle_response_strtoobjmap($inner_class, $_) } @$value ];
          } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToNativeMapParser')}) {
            $args{ $att } = [ map { $self->handle_response_strtonativemap($inner_class, $_) } @$value ];
          } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::MapParser')}) {
            die "MapParser Type in an Array. Please implement me";
          } else {
            $args{ $att } = [ map { $self->new_from_result_struct($inner_class, $_) } @$value ];
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

  sub response_to_object {
    my ($self, $call_object, $response) = @_;

    $call_object = ref($call_object);

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);

    my $headers = $response->headers;
    my $request_id = $headers->{'x-amz-request-id'} || $headers->{'x-amzn-requestid'};
    # AWS has sent duplicate headers x-amx-request-id headers on some services. See issue 324 for more info
    $request_id = (ref($request_id) eq 'ARRAY') ? $request_id->[0] : $request_id;
 
    return Paws::API::Response->new(_request_id => $request_id) if (not $returns);

    my $unserialized_struct = $self->unserialize_response( $response );
    $unserialized_struct->{ _request_id } = $request_id;
    my $o_result = $self->new_from_result_struct($call_object->_returns, $unserialized_struct);
    return $o_result;
  }

1;
