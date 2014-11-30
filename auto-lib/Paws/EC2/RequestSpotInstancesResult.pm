
package Paws::EC2::RequestSpotInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotInstancesResult

=head1 ATTRIBUTES

=head2 SpotInstanceRequests => ArrayRef[Paws::EC2::SpotInstanceRequest]

  

Information about the Spot Instance request.











=cut

