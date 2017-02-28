
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

Collection of objects containing capacity information for each
requested fleet ID. Leave this parameter empty to retrieve capacity
information for all fleets.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;