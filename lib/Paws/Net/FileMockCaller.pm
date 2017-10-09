package Paws::Net::FileMockCaller;
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

  sub _set_file {
    my $self = shift;
    $self->_clear_file_contents;
    $self->_clear_method;
    $self->_clear_service;
    $self->_clear_params;
  }

  has file_contents => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    clearer => '_clear_file_contents',
    default => sub {
      my $self = shift;
      my $content = read_text($self->file);
      my $hash = $self->_encoder->decode($content);
      return $hash;
    }
  );

  has service => (
    is => 'ro',
    isa => 'Str',
    clearer => '_clear_service',
    lazy => 1,
    default => sub { shift->file_contents->{ request }->{ service } }
  );
  has method => (
    is => 'ro',
    isa => 'Str',
    clearer => '_clear_method',
    lazy => 1,
    default => sub { shift->file_contents->{ request }->{ call } }
  );
  has params => (
    is => 'ro',
    isa => 'HashRef',
    clearer => '_clear_params',
    lazy => 1,
    default => sub { shift->file_contents->{ request }->{ params } }
  );

  has _encoder => (is => 'ro', default => sub { JSON::MaybeXS->new(canonical => 1) });

  sub send_request {
    my ($self, $service, $call_object) = @_;

    my $actual_call = $self->_encoder->encode($service->to_hash($call_object));
    my $recorded_call = $self->_encoder->encode($self->params);

    if ($actual_call ne $recorded_call) {
      warn "CALL: $actual_call";
      warn "RECORDED: $recorded_call";

      Paws::Exception->throw(
        request_id => '',
        code => 'ReplayInvalid',
        message => 'The calling parameters and the parameters used to generate the call are not equal'
      )
    }
 
    my $response = $self->file_contents;
    return Paws::Net::APIResponse->new(
      status  => $response->{response}{status},
      content => $response->{response}{content},
      headers => $response->{response}{headers}
    );
  };

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
 
    return $self->real_caller->caller_to_response($service, $call_object, $response);   
  };

1;
