package TestResponseRecorder {
  use Moose;
  extends 'Paws::Net::Caller';

  use Hash::MD5;
  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;

  has replay_calls => (is => 'ro', isa => 'Bool', required => 1, default => sub { not defined $ENV{PAWS_CONVERSATION_DIR} });
  has conversation_dir => (is => 'ro', isa => 'Str', required => 1, default => sub { $ENV{PAWS_CONVERSATION_DIR} });
  has _request_nums => (is => 'ro', isa => 'HashRef[Int]', default => sub { {} });

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $h = $service->to_hash($call_object);
    $h->{ _service } = $service->service;
    $h->{ _call } = $call_object->_api_call;

    my $sig = Hash::MD5::sum_hash($h);
    my $req_num = $self->_request_nums->{ $sig } ++;
    my $req_id = $service->service . '.' . $call_object->_api_call . ".$sig.$req_num";
    my $test_file = $self->conversation_dir . '/' . $req_id;

    my $res;
    if ($self->replay_calls) {
      #LOAD HTTP request from file
      my $response = decode_json(read_text($test_file));
      $res = $service->handle_response($call_object, $response->{status}, $response->{content}, $response->{headers});  
    } else {
      my $requestObj = $service->prepare_request_for_call($call_object);

      my $headers = $requestObj->header_hash;
      # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
      delete $headers->{Host};

      my $response = $self->ua->request(
        $requestObj->method,
        $requestObj->url,
        {
          headers => $headers,
          (defined $requestObj->content)?(content => $requestObj->content):(),
        }
      );

      $response->{content} =~ s/<(RequestId)>.*<\/(RequestId)>/<$1>000000000000000000000000000000000000<\/$2>/;
      $response->{content} =~ s/<(RequestID)>.*<\/(RequestID)>/<$1>000000000000000000000000000000000000<\/$2>/;

      if ($response->{headers}->{ "x-amzn-requestid" }) {
        $response->{headers}->{ "x-amzn-requestid" }  = '000000000000000000000000000000000000' 
      }

      if ($response->{headers}->{ "x-amz-request-id" }) {
        $response->{headers}->{ "x-amz-request-id" }  = '000000000000000000000000000000000000' 
      }

      write_text($test_file, encode_json({ 
        content => $response->{content}, 
        headers => $response->{headers},
        status  => $response->{status}, 
      }));

      $res = $service->handle_response($call_object, $response->{status}, $response->{content}, $response->{headers});
    }

    if ($res->isa('Paws::Exception')) {
      $res->throw;
    } else {
      return $res;
    }
  }

}

1;
