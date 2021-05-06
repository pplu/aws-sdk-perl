
package Paws::ServiceDiscovery::GetInstanceResponse;
  use Moose;
  has Instance => (is => 'ro', isa => 'Paws::ServiceDiscovery::Instance');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetInstanceResponse

=head1 ATTRIBUTES


=head2 Instance => L<Paws::ServiceDiscovery::Instance>

A complex type that contains information about a specified instance.


=head2 _request_id => Str


=cut

1;