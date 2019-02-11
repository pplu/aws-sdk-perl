package Paws::API::Caller;
  use Moose::Role;
  use Paws;
  use Paws::Net::APIRequest;
  use Paws::API::Response;

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

    Paws->new_with_coercions($class, %params);
  }

  sub to_hash {
    my ($self, $params) = @_;

    return Paws->to_hash($params);
  }

  sub response_to_object {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

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
        if ($ret_class->can('_payload')) {
          $unserialized_struct = {$ret_class->_payload => $content};
        }
        else {
          $unserialized_struct = eval { $self->unserialize_response( $content ) };
        }
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
