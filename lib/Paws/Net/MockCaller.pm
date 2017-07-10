package Paws::Net::MockCaller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;
  use Moose::Util::TypeConstraints;
  use Path::Tiny;
  use Paws::Net::FileMockCaller;

  has real_caller => (
    is => 'ro', 
    does => 'Paws::Net::CallerRole', 
    default => sub {
      require Paws::Net::Caller;
      Paws::Net::Caller->new;
    }
  );

  has mock_mode => (
    is => 'ro',
    isa => enum([ 'REPLAY', 'RECORD' ]),
    required => 1,
    default => sub { $ENV{PAWS_MOCK_MODE} }
  );

  has mock_dir => (
    is => 'ro',
    isa => 'Str',
    required => 1,
    default => sub { $ENV{PAWS_MOCK_DIR} }
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

  has caller => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      Paws::Net::FileMockCaller->new(
        real_caller => $self->real_caller,
      );
    }
  );

  has result_hook => (
    is => 'ro',
    isa => 'CodeRef',
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;

    $self->_test_file(sprintf("%s/%04d.response", $self->mock_dir, $self->_request_num));
    $self->_next_request;

    if ($self->mock_mode eq 'REPLAY') {
      $self->caller->file($self->_test_file);
      return $self->caller->send_request($service, $call_object);
    } elsif ($self->mock_mode eq 'RECORD') {
      return $self->real_caller->send_request($service, $call_object);
    } else {
      die "Unsupported record mode " . $self->mock_mode;
    }
  };

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    my $content = $response->content;
    my $headers = $response->headers;
 
    $content =~ s/<(RequestId)>.*<\/(RequestId)>/<$1>000000000000000000000000000000000000<\/$2>/ if (defined $content);
    $content =~ s/<(RequestID)>.*<\/(RequestID)>/<$1>000000000000000000000000000000000000<\/$2>/ if (defined $content);

    if ($headers->{ "x-amzn-requestid" }) {
      $headers->{ "x-amzn-requestid" }  = '000000000000000000000000000000000000' 
    }

    if ($headers->{ "x-amz-request-id" }) {
      $headers->{ "x-amz-request-id" }  = '000000000000000000000000000000000000' 
    }

    if ($self->mock_mode eq 'RECORD') {
      my $file = path $self->_test_file;
      $file->parent->mkpath;

      write_text($self->_test_file, encode_json({
        request => {
          params => $service->to_hash($call_object),
          service => $service->service,
          call => $call_object->_api_call,
        },
        response => { 
          content => $response->content, 
          headers => $response->headers,
          status  => $response->status,
        }
      }));

      my $result = $self->real_caller->caller_to_response($service, $call_object, $response);   
      $self->result_hook->($self, $result) if (defined $self->result_hook);
      return $result;
    } else {
      return $self->real_caller->caller_to_response($service, $call_object, $response);
    }
  };

1;
