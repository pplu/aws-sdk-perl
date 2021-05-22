
package Paws::EC2::GetGroupsForCapacityReservationResult;
  use Moose;
  has CapacityReservationGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CapacityReservationGroup]', request_name => 'capacityReservationGroupSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetGroupsForCapacityReservationResult

=head1 ATTRIBUTES


=head2 CapacityReservationGroups => ArrayRef[L<Paws::EC2::CapacityReservationGroup>]

Information about the resource groups to which the Capacity Reservation
has been added.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

