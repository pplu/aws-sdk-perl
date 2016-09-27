#
# Caller that uses the call object to hold the response that would have been returned by the API
#

package TestGivenResponse;
  use Moose;
  use Carp qw(croak);

  with 'Paws::Net::CallerRole';

  sub do_call {
    my ($self, $service, $call_object) = @_;

    return $self->caller_to_response($service, $call_object, 200, $call_object->response, {});
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;

    my $res = $service->handle_response($call_object, $status, $content, $headers);

    return $res;
  }

  no Moose;

  __PACKAGE__->meta->make_immutable;
1;
