package Paws::Net::RestXMLResponse;
  use Moose;
  use XML::Simple qw//;
  use Carp qw(croak);
  use HTTP::Status;
  use Paws::Exception;

  sub unserialize_response {
    my ($self, $data) = @_;

    return {} if (not defined $data or $data eq '');
    
    my $xml = XML::Simple->new(
      ForceArray    => qr/^(?:item|Errors)/i,
      KeyAttr       => '',
      SuppressEmpty => undef,
    );
    return $xml->parse_string($data);
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

    my $struct = eval { $self->unserialize_response( $response->content ) };
    if ($@){
      return Paws::Exception->new(
        message => $@,
        code => 'InvalidContent',
        request_id => '', #$request_id,
        http_status => $response->status,
      );
    }

    my ($message, $code, $request_id, $host_id);

    $message = status_message($response->status);
    $code = $response->status;

    if (exists $struct->{RequestId}) {
      $request_id = $struct->{RequestId};
    } elsif (exists $struct->{RequestID}){
      $request_id = $struct->{RequestID};
    } elsif ($response->has_header('x-amzn-requestid')) {
      $request_id = $response->header('x-amzn-requestid');
    } else {
      $request_id = '';
    }
    $host_id = $response->header('x-amz-id-2');

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      host_id => $host_id,
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
        
    my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $self->new_from_result_struct($inner_class, $_->{ $xml_values }) ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $self->new_from_result_struct($inner_class, $value->{ $xml_values }) });
    } elsif (not defined $value){
      return $att_class->new(Map => {});
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
        
    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $_->{ $xml_values } ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $value->{ $xml_values } } );
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
      my $att_is_required = $meta->is_required;

    #  use Data::Dumper;
    #  print STDERR "USING KEY:  $key\n";
    #  print STDERR "$att IS A '$att_type' TYPE\n";
    #  print STDERR "VALUE: " . Dumper($result);
    #  my $extracted_val = $result->{ $key };
    #  print STDERR "RESULT >>> $extracted_val\n";

      # Free-form paramaters passed in the HTTP headers
      if ($meta->does('Paws::API::Attribute::Trait::ParamInHeaders')) { 
        Paws->load_class("$att_type");
        my $att_class        = $att_type->class;
        my $header_prefix    = $meta->header_prefix;
        my @metadata_headers = map { my ($h, $nometa) = ($_, $_); $nometa =~ s/^$header_prefix//; [ $h, $nometa ] } grep /^$header_prefix/, keys %{$result};
        $args{ $att }        = $att_class->new( Map => { map { $_->[1] => $result->{$_->[0]} } @metadata_headers } ); 
      }
      # We'll consider that an attribute without brackets [] isn't an array type
      elsif ($att_type !~ m/\[.*\]$/) {
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


                $args{ $att } = $att_class->new(map { ($_->{ $xml_keys } => $_->{ $xml_values }) } @$value);
              } else {
                $args{ $att } = $self->new_from_result_struct($att_class, $value);
              }
            }
          } else {
              ##########
              # This loop is required to guard against cases (such as Paws::S3::CopyObject) where
              # the root node is removed from the response when unserialising (see KeepRoot => 1 for 
              # XML::Simple) but is required to create the Paws object. This is mostly due to the 
              # implementation of the new_from_result_struct sub 
              my $att_class = $att_type->class;
              eval {
                $args{ $att } = $self->new_from_result_struct($att_class, $result);
                1;
              } or do {}
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
            $args{ $att } = [ map { $self->new_from_result_struct($type, $_) } @$val ];
          }
        } else {
          if (defined $value){
            if ($value_ref eq 'ARRAY') {
              $args{ $att } = $value; 
            } else {
              $args{ $att } = [ $value ];
            }
          } else {
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
    my ($http_status, $content, $headers) = ($response->status, $response->content, $response->headers);;

    $call_object = $call_object->meta->name;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);
 
    my $unserialized_struct;

    if ($ret_class->can('_stream_param')) {
      $unserialized_struct = {}
    } else {
      if (not defined $content or $content eq '') {
        $unserialized_struct = {}
      } else {
        $unserialized_struct = eval { $self->unserialize_response( $content ) };
        if ($@){
          return Paws::Exception->new(
            message => $@,
            code => 'InvalidContent',
            request_id => '', #$request_id,
            http_status => $http_status,
          );
        }
      }
    }

    my $request_id = $headers->{'x-amz-request-id'} 
                      || $headers->{'x-amzn-requestid'}
                      || $unserialized_struct->{'requestId'} 
                      || $unserialized_struct->{'RequestId'} 
                      || $unserialized_struct->{'RequestID'}
                      || $unserialized_struct->{ ResponseMetadata }->{ RequestId };
 
    if ($call_object->_result_key){
      $unserialized_struct = $unserialized_struct->{ $call_object->_result_key };
    }

    $unserialized_struct->{ _request_id } = $request_id;
      
    if ($returns){
      if ($ret_class->can('_stream_param')) {
        $unserialized_struct->{ $ret_class->_stream_param } = $content
      }

      foreach my $key (keys %$headers){
        $unserialized_struct->{lc $key} = $headers->{$key};
      }

      my $o_result = $self->new_from_result_struct($call_object->_returns, $unserialized_struct);
      return $o_result;
    } else {
      return Paws::API::Response->new(
        _request_id => $request_id,
      );
    }
  }

1;
