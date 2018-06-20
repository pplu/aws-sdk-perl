package Paws::Net::NoResponseMockCaller;
  use Moose;

  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  use Paws::Net::APIResponse;
  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;
  use Moose::Util::TypeConstraints;
  use Path::Tiny;

  has file => (is => 'rw', isa => 'Str', trigger => \&_set_file);

  has real_caller => (
    is => 'ro',
    does => 'Paws::Net::CallerRole',
    default => sub {
      require Paws::Net::Caller;
      Paws::Net::Caller->new;
    }
  );

  has actual_request => (
    is => 'rw',
    isa => 'Object',
    lazy => 1,
    default => sub { '' },
    );

  has _encoder => (is => 'ro', default => sub { JSON::MaybeXS->new(canonical => 1) });

  sub send_request {
    my ($self, $service, $call_object) = @_;

    $self->actual_request($service->prepare_request_for_call($call_object));
    my $actual_call = $self->_encoder->encode($service->to_hash($call_object));

    # we don't care about the response
    return {};
  };

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;

    return $response;
  };

1;
