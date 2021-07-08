
package Paws::GameLift::DescribeFleetCapacityOutput;
  use Moose;
  has FleetCapacity => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::FleetCapacity]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetCapacityOutput

=head1 ATTRIBUTES


=head2 FleetCapacity => ArrayRef[L<Paws::GameLift::FleetCapacity>]

A collection of objects that contains capacity information for each
requested fleet ID. Capacity objects are returned only for fleets that
currently exist.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;