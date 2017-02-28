
package Paws::GameLift::ListFleetsOutput;
  use Moose;
  has FleetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListFleetsOutput

=head1 ATTRIBUTES


=head2 FleetIds => ArrayRef[Str|Undef]

Set of fleet IDs matching the list request. You can retrieve additional
information about all returned fleets by passing this result set to a
call to DescribeFleetAttributes, DescribeFleetCapacity, or
DescribeFleetUtilization.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;