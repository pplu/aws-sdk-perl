package Paws::Net::RestXMLResponse;
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);
  use HTTP::Status;
  use Paws::Exception;

  sub unserialize_response {
    my ($self, $data) = @_;

    return {} if (not defined $data or $data eq '');

    my $xml = XML::Simple::XMLin( $data,
            ForceArray    => [ qr/(?:^item$|Errors)/i, ],
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    return $xml;
  }

  sub handle_response {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

    my $unserialized_struct = {};
 
    my $ret_class = $call_object->meta->name->_returns;
    if (defined $ret_class){
      Paws->load_class($ret_class);
      if ($ret_class->can('_stream_param')) {
        $unserialized_struct->{ $ret_class->_stream_param } = $content;
      } else {
        $unserialized_struct = $self->unserialize_response( $content );
      }
    }

    # Set respones headers attributes
    foreach my $key (keys %$headers){
      $unserialized_struct->{lc $key} = $headers->{$key};
    }
 
    if ( $http_status >= 300 ) {
      return $self->error_to_exception($unserialized_struct, $call_object, $http_status, $content, $headers);
    } else {
      return $self->response_to_object($unserialized_struct, $call_object, $http_status, $content, $headers);
    }
  }

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($message, $code, $request_id, $host_id);

    $message = status_message($http_status);
    $code = $http_status;
    $request_id = $headers->{ 'x-amz-request-id' };
    $host_id = $headers->{ 'x-amz-id-2' };

    # Find in the body if it's not in headers
    $request_id = $struct->{ RequestId } if (not defined $request_id);

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      host_id => $host_id,
      http_status => $http_status,
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
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $self->new_from_struct($inner_class, $_->{ $xml_values }) ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $self->new_from_struct($inner_class, $value->{ $xml_values }) });
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
1;
