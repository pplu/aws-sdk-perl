package Paws::Net::XMLResponse;
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);
  use Paws::Exception;

  sub handle_response {
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

    Paws::Exception->new(
      message => $error->{Message} // $response->content,
      code => $code,
      request_id => $request_id,
      http_status => $response->status,
    );
  }

  sub unserialize_response {
    my ($self, $data) = @_;

    my $xml = XML::Simple->new(
      ForceArray    => qr/(?:item|Errors)/i,
      KeyAttr       => '',
      SuppressEmpty => undef,
    );
    return $xml->parse_string($data);
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
1;
