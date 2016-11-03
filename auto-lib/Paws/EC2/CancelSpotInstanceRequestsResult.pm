
package Paws::EC2::CancelSpotInstanceRequestsResult;
  use Moose;
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CancelledSpotInstanceRequest]', request_name => 'spotInstanceRequestSet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotInstanceRequestsResult

=head1 ATTRIBUTES


=head2 CancelledSpotInstanceRequests => ArrayRef[L<Paws::EC2::CancelledSpotInstanceRequest>]

One or more Spot instance requests.




=cut

