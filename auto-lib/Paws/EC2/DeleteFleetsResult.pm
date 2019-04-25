
package Paws::EC2::DeleteFleetsResult;
  use Moose;
  has SuccessfulFleetDeletions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DeleteFleetSuccessItem]', request_name => 'successfulFleetDeletionSet', traits => ['NameInRequest',]);
  has UnsuccessfulFleetDeletions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DeleteFleetErrorItem]', request_name => 'unsuccessfulFleetDeletionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteFleetsResult

=head1 ATTRIBUTES


=head2 SuccessfulFleetDeletions => ArrayRef[L<Paws::EC2::DeleteFleetSuccessItem>]

Information about the EC2 Fleets that are successfully deleted.


=head2 UnsuccessfulFleetDeletions => ArrayRef[L<Paws::EC2::DeleteFleetErrorItem>]

Information about the EC2 Fleets that are not successfully deleted.


=head2 _request_id => Str


=cut

