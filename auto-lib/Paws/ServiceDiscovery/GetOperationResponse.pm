
package Paws::ServiceDiscovery::GetOperationResponse;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::ServiceDiscovery::Operation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetOperationResponse

=head1 ATTRIBUTES


=head2 Operation => L<Paws::ServiceDiscovery::Operation>

A complex type that contains information about the operation.


=head2 _request_id => Str


=cut

1;