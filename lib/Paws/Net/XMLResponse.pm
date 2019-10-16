package Paws::Net::XMLResponse;
  use Moo;
  use XML::Simple qw//;
  use Carp qw(croak);
  use Paws::Exception;
  use feature 'state';

  has _xml_parser => (
    is => 'ro',
    default => sub {
      return XML::Simple->new(
        ForceArray    => qr/^(?:item|Errors)/i,
        KeyAttr       => '',
        SuppressEmpty => undef,
      );
    }
  );

  sub unserialize_response {
    my ($self, $response) = @_;

    if (not defined $response->content or $response->content eq '') { 
      return Paws::Exception->new(
        message => 'HTTP error with no body in HTTP response',
        code => 'InvalidContent',
        request_id => '',
        http_status => $response->status,
      );
    }

    my $struct = eval { $self->_xml_parser->parse_string($response->content) };
    if ($@){
      return Paws::Exception->throw(
        message => $@,
        code => 'InvalidContent',
        request_id => '', #$request_id,
        http_status => $response->status,
      );
    }
    return $struct;
  }

  sub process {
    my ($self, $call_object, $response) = @_;

    if ( $response->status >= 300 ) {
        return $self->error_to_exception($call_object, $response);
    } else {
        return $self->response_to_object($call_object, $response);
    }
  }

  sub error_to_exception {
    my ($self, $call_object, $response) = @_;

    my $struct = $self->unserialize_response( $response );
    return $struct if (ref($struct) eq 'Paws::Exception');
 
    my ($code, $error, $request_id);

    if (exists $struct->{Errors}){
      $error = $struct->{Errors}->[0]->{Error};
    } elsif (exists $struct->{Error}){
      $error = $struct->{Error};
    } else {
      $error = $struct;
    }

    if (exists $error->{Code}){
      $code = $error->{Code};
    } else {
      $code = $response->status;
    }

    if (exists $struct->{RequestId}) {
      $request_id = $struct->{RequestId};
    } elsif (exists $struct->{RequestID}){
      $request_id = $struct->{RequestID};
    } elsif ($response->has_header('x-amzn-requestid')) {
      $request_id = $response->header('x-amzn-requestid');
    } else {
      $request_id = '';
    }

    return Paws::Exception->new(
      message => $error->{Message} // $response->content,
      code => $code,
      request_id => $request_id,
      http_status => $response->status,
    );
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

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
        
    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $_->{ $xml_values } ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $value->{ $xml_values } } );
    }
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

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
        
    my $inner_class = $att_class->params_map->{types}{Map}{class};
#    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $self->new_from_result_struct($inner_class, $_->{ $xml_values }) ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $self->new_from_result_struct($inner_class, $value->{ $xml_values }) });
    } elsif (not defined $value){
      return $att_class->new(Map => {});
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
          ($params_map->{ParamInHeader}{$att} ?
          lc($params_map->{ParamInHeader}{$att}) : $att);

      my $att_type = $params_map->{types}{$att}{type};
      my $att_is_required = $params_map->{IsRequired}{$att};

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
          # Make the att_type stringify for module loading
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

                #TODO: handle in one place
                if ($value_ref eq 'HASH') {
                  if (exists $value->{ member }) {
                    $value = $value->{ member };
                  } elsif (exists $value->{ entry }) {
                    $value = $value->{ entry  };
                  } elsif (keys %$value == 1) {
                    $value = $value->{ (keys %$value)[0] };
                  } else {
                    # Force it to be an arrayref and hope it is processed correctly
                    $value = [ $value ];
                  }
                  $value_ref = ref($value);
                }


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
 
        if ($inner_class) {
          Paws->load_class($inner_class);

          my $val;
          if (not defined $value) {
            $val = [ ];
          } elsif ($value_ref eq 'ARRAY') {
            $val = $value;
          } elsif ($value_ref eq 'HASH') {
            $val = [ $value ];
          }

          if (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToObjMapParser')}) {
            $args{ $att } = [ map { $self->handle_response_strtoobjmap($inner_class, $_) } @$val ];
          } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::StrToNativeMapParser')}) {
            $args{ $att } = [ map { $self->handle_response_strtonativemap($inner_class, $_) } @$val ];
          } elsif (do { state %d; $d{$inner_class} //= $inner_class->does('Paws::API::MapParser')}) {
            die "MapParser Type in an Array. Please implement me";
          } else {
            $args{ $att } = [ map { $self->new_from_result_struct($inner_class, $_) } @$val ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          } else {
              ## FIXME, do we need this?
            $args{ $att } = [] if ($att_is_required);
          }
        }
      }
    }
    $class->new(%args);
    }
  }

  sub response_to_object {
    my ($self, $call_object, $response) = @_;

#    $call_object = $call_object->meta->name;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);

    my $unserialized_struct = $self->unserialize_response( $response );
    my $headers = $response->headers;
    my $request_id = $headers->{'x-amz-request-id'} 
                      || $headers->{'x-amzn-requestid'}
                      || $unserialized_struct->{'requestId'} 
                      || $unserialized_struct->{'RequestId'} 
                      || $unserialized_struct->{'RequestID'}
                      || $unserialized_struct->{ ResponseMetadata }->{ RequestId };

    # AWS has sent duplicate headers x-amx-request-id headers on some services. See issue 324 for more info
    $request_id = (ref($request_id) eq 'ARRAY') ? $request_id->[0] : $request_id;
      
    if ($returns){
      if ($call_object->_result_key){
        $unserialized_struct = $unserialized_struct->{ $call_object->_result_key };
      }
      $unserialized_struct->{ _request_id } = $request_id;
      my $o_result = $self->new_from_result_struct($call_object->_returns, $unserialized_struct);
      return $o_result;
    } else {
      return Paws::API::Response->new(
        _request_id => $request_id
      );
    }
  }

1;
