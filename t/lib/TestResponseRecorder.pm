package TestResponseRecorder;
  use Moose::Role;

  use Digest::MD5 qw(md5_hex);
  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;

  has replay_calls => (is => 'ro', isa => 'Bool', required => 1, default => sub { not defined $ENV{PAWS_CONVERSATION_DIR} });
  has conversation_dir => (is => 'ro', isa => 'Str', required => 1, default => sub { $ENV{PAWS_CONVERSATION_DIR} });
  has _request_nums => (is => 'ro', isa => 'HashRef[Int]', default => sub { {} });

  has _test_file => (is => 'rw', isa => 'Str');

  around send_request => sub {
    my ($orig, $self, $service, $call_object) = @_;

    my $h = $service->to_hash($call_object);
    $h->{ _service } = $service->service;
    $h->{ _call } = $call_object->_api_call;

    my $sig = md5_hex(JSON::MaybeXS->new(canonical => 1)->encode($h));
    my $req_num = $self->_request_nums->{ $sig } ++;
    my $req_id = $service->service . '.' . $call_object->_api_call . ".$sig.$req_num";
    my $test_file = $self->conversation_dir . '/' . $req_id;

    $self->_test_file($test_file);

    if ($self->replay_calls) {
      #LOAD HTTP request from file
      my $response = decode_json(read_text($test_file));
      return $self->caller_to_response($service, $call_object, $response->{status}, $response->{content}, $response->{headers});  
    } else {
      return $self->$orig($service, $call_object);
    }
  };

  around caller_to_response => sub {
    my ($orig, $self, $service, $call_object, $status, $content, $headers) = @_;
 
    $content =~ s/<(RequestId)>.*<\/(RequestId)>/<$1>000000000000000000000000000000000000<\/$2>/;
    $content =~ s/<(RequestID)>.*<\/(RequestID)>/<$1>000000000000000000000000000000000000<\/$2>/;

    if ($headers->{ "x-amzn-requestid" }) {
      $headers->{ "x-amzn-requestid" }  = '000000000000000000000000000000000000' 
    }

    if ($headers->{ "x-amz-request-id" }) {
      $headers->{ "x-amz-request-id" }  = '000000000000000000000000000000000000' 
    }

    write_text($self->_test_file, encode_json({ 
      content => $content, 
      headers => $headers,
      status  => $status, 
    }));

    return $self->$orig($service, $call_object, $status, $content, $headers);   
  };

1;
