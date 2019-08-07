package Test05Caller;
  use Moo;
  with 'Paws::Net::CallerRole';

  sub caller_to_response {}

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    return $requestObj;
  }
1;
