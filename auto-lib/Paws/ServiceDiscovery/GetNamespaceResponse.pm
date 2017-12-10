
package Paws::ServiceDiscovery::GetNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::ServiceDiscovery::Namespace');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetNamespaceResponse

=head1 ATTRIBUTES


=head2 Namespace => L<Paws::ServiceDiscovery::Namespace>

A complex type that contains information about the specified namespace.


=head2 _request_id => Str


=cut

1;