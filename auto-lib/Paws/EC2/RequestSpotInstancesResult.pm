
package Paws::EC2::RequestSpotInstancesResult;
  use Moose;
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotInstanceRequest]', xmlname => 'spotInstanceRequestSet', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotInstancesResult

=head1 ATTRIBUTES


=head2 SpotInstanceRequests => ArrayRef[L<Paws::EC2::SpotInstanceRequest>]

One or more Spot instance requests.




=cut

