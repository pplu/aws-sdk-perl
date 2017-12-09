
package Paws::ServiceDiscovery::CreateServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ServiceDiscovery::Service');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreateServiceResponse

=head1 ATTRIBUTES


=head2 Service => L<Paws::ServiceDiscovery::Service>

A complex type that contains information about the new service.


=head2 _request_id => Str


=cut

1;