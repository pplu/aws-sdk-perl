#
# Caller that uses the call object to hold the response that would have been returned by the API
#

package TestGivenResponse;
  use Moose;
  use Carp qw(croak);

  with 'Paws::Net::CallerRole';

  sub do_call {
    my ($self, $service, $call_object) = @_;

    return $self->caller_to_response(
      $service,
      $call_object,
      $call_object->status,
      $call_object->response eq '[UNDEF]' ? undef : $call_object->response,
      {
        'x-amzn-requestid' => 'fake-uuid',
        'x-amz-request-id' => 'fake-uuid',
      }
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;

    my $res = $service->handle_response($call_object, $status, $content, $headers);

    if ($res->isa('Paws::Exception')){
      $res->throw
    } else {
      return $res;
    }
  }

  no Moose;

  __PACKAGE__->meta->make_immutable;
1;
