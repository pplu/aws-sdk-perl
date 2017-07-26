package TestRequestCaller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  use File::Slurper qw(read_text write_text);
  use JSON::MaybeXS;
  use Moose::Util::TypeConstraints;
  use Path::Tiny;

  has request_obj => (
    is => 'rw',
  );

  sub do_call {
    my ($self, $service, $call_object) = @_;

    $self->request_obj($service->prepare_request_for_call($call_object));

    return (200, '', {});
  };

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;
 
    my $ro = $self->request_obj;
    $self->request_obj(undef);
    return $ro;
  };

1;
