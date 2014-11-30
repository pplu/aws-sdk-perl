
package Paws::EC2::CancelSpotInstanceRequestsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CancelledSpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotInstanceRequestsResult

=head1 ATTRIBUTES

=head2 CancelledSpotInstanceRequests => ArrayRef[Paws::EC2::CancelledSpotInstanceRequest]

  

One or more Spot Instance requests.











=cut

