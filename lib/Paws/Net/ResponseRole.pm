package Paws::Net::ResponseRole;
  use Moose::Role;


  sub response_to_object {
    my ($self, $call_object, $response) = @_;
    my ($http_status, $content, $headers) = ($response->status, $response->content, $response->headers);;

    $call_object = $call_object->meta->name;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);
 
    my $request_id = $headers->{'x-amz-request-id'} 
      || $headers->{'x-amzn-requestid'};

    # No need to care about parsing the response, if we aren't going
    # to use it anyway
    # See also: t/25_error_on_malformed_response.t

    return Paws::API::Response->new(
      _request_id => $request_id,
     ) if !$returns;
    
    my $unserialized_struct;
    if ($ret_class->can('_stream_param')) {
      # bytes from a file for example:
      $unserialized_struct = {}
    } elsif ($http_status == 204 && (not defined $content or $content eq '')) {
      ## eg when we have a 204 - No content response
      $unserialized_struct = {}
    } else {
      $unserialized_struct = $self->unserialize_response( $response );
    }
                 

    $request_id
      ||= $unserialized_struct->{'requestId'} 
      || $unserialized_struct->{'RequestId'} 
      || $unserialized_struct->{'RequestID'}
      || $unserialized_struct->{ ResponseMetadata }->{ RequestId };
 
    if ($call_object->can('_result_key') && $call_object->_result_key){
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
