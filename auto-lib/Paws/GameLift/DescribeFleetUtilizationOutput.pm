
package Paws::GameLift::DescribeFleetUtilizationOutput;
  use Moose;
  has FleetUtilization => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::FleetUtilization]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetUtilizationOutput

=head1 ATTRIBUTES


=head2 FleetUtilization => ArrayRef[L<Paws::GameLift::FleetUtilization>]

Collection of objects containing utilization information for each
requested fleet ID.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;