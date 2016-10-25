package Paws::Net::MockCaller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;
  use Moose::Util::TypeConstraints;

  has real_caller => (
    is => 'ro', 
    does => 'Paws::Net::CallerRole', 
    default => sub {
      require Paws::Net::Caller;
      Paws::Net::Caller->new;
    }
  );

  has record_mode => (
    is => 'ro',
    isa => enum([ 'REPLAY', 'RECORD' ]),
    required => 1,
    default => sub { $ENV{PAWS_RECORDER_MODE} }
  );

  has recorder_dir => (
    is => 'ro',
    isa => 'Str',
    required => 1,
    default => sub { $ENV{PAWS_RECORDER_DIR} }
  );

  has _request_num => (
    is => 'ro',
    isa => 'Int',
    default => 1,
    traits => [ 'Counter' ],
    handles => {
      _next_request => 'inc'
    }
  );

  has _test_file => (is => 'rw', isa => 'Str');

  sub send_request {
    my ($self, $service, $call_object) = @_;

    $self->_test_file(sprintf("%s/%04d.test", $self->recorder_dir, $self->_request_num));
    $self->_next_request;

    if ($self->record_mode eq 'REPLAY') {
      #LOAD HTTP request from file
      my $response = decode_json(read_text($self->_test_file));

      my $actual_call = JSON::MaybeXS->new(canonical => 1)->encode($service->to_hash($call_object));
      my $recorded_call = JSON::MaybeXS->new(canonical => 1)->encode($response->{request}{params});
      if ($actual_call ne $recorded_call) {
        warn "CALL: $actual_call";
        warn "RECORDED: $recorded_call";

        Paws::Exception->throw(
          request_id => '',
          code => 'ReplayInvalid',
          message => 'The calling parameters and the parameters used to generate the call are not equal'
        )
      }
 
      return ($response->{response}{status}, $response->{response}{content}, $response->{response}{headers});
    } elsif ($self->record_mode eq 'RECORD') {
      return $self->real_caller->send_request($service, $call_object);
    } else {
      die "Unsupported record mode " . $self->record_mode;
    }
  };

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;
 
    $content =~ s/<(RequestId)>.*<\/(RequestId)>/<$1>000000000000000000000000000000000000<\/$2>/ if (defined $content);
    $content =~ s/<(RequestID)>.*<\/(RequestID)>/<$1>000000000000000000000000000000000000<\/$2>/ if (defined $content);

    if ($headers->{ "x-amzn-requestid" }) {
      $headers->{ "x-amzn-requestid" }  = '000000000000000000000000000000000000' 
    }

    if ($headers->{ "x-amz-request-id" }) {
      $headers->{ "x-amz-request-id" }  = '000000000000000000000000000000000000' 
    }

    if ($self->record_mode eq 'RECORD') {
      write_text($self->_test_file, encode_json({
        request => {
          params => $service->to_hash($call_object),
          service => $service->service,
          call => $call_object->_api_call,
        },
        response => { 
          content => $content, 
          headers => $headers,
          status  => $status
        }
      }));
    }

    return $self->real_caller->caller_to_response($service, $call_object, $status, $content, $headers);   
  };

1;
