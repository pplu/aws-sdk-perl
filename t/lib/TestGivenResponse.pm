#
# Caller that uses the call object to hold the response that would have been returned by the API
#

package TestGivenResponse;
  use Moose;
  use Carp qw(croak);

  with 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $response = Paws::Net::APIResponse->new(
      status  => $call_object->status,
      content => ($call_object->response eq '[UNDEF]' ? undef : $call_object->response),
      headers => {
        'x-amzn-requestid' => 'fake-uuid',
        'x-amz-request-id' => 'fake-uuid',
      }
    );


    return $self->caller_to_response($service, $call_object, $response);
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;

    my $res = $service->response_to_object->process($call_object, $response);

    if ($res->isa('Paws::Exception')){
      $res->throw
    } else {
      return $res;
    }
  }

  no Moose;

  __PACKAGE__->meta->make_immutable;
1;
