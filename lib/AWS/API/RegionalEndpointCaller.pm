package AWS::API::RegionalEndpointCaller {
  use Moose::Role;
  has region => (is => 'rw', isa => 'Str');
  requires 'service';

  sub endpoint_host {
    my $self = shift;
    return sprintf '%s.%s.amazonaws.com', $self->service, $self->region;
  }

  sub _api_endpoint {
    my $self = shift;
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

1;
