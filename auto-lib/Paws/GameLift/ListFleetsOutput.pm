
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

A set of fleet IDs that match the list request. You can retrieve
additional information about all returned fleets by passing this result
set to a DescribeFleetAttributes, DescribeFleetCapacity, or
DescribeFleetUtilization call.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;