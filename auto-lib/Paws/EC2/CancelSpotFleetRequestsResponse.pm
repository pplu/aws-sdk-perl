
package Paws::EC2::CancelSpotFleetRequestsResponse;
  use Moose;
  has SuccessfulFleetRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CancelSpotFleetRequestsSuccessItem]', request_name => 'successfulFleetRequestSet', traits => ['NameInRequest',]);
  has UnsuccessfulFleetRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CancelSpotFleetRequestsErrorItem]', request_name => 'unsuccessfulFleetRequestSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotFleetRequestsResponse

=head1 ATTRIBUTES


=head2 SuccessfulFleetRequests => ArrayRef[L<Paws::EC2::CancelSpotFleetRequestsSuccessItem>]

Information about the Spot Fleet requests that are successfully
canceled.


=head2 UnsuccessfulFleetRequests => ArrayRef[L<Paws::EC2::CancelSpotFleetRequestsErrorItem>]

Information about the Spot Fleet requests that are not successfully
canceled.


=head2 _request_id => Str


=cut

