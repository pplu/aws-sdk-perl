
package Paws::GameLift::DescribeFleetUtilizationOutput;
  use Moose;
  has FleetUtilization => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::FleetUtilization]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetUtilizationOutput

=head1 ATTRIBUTES


=head2 FleetUtilization => ArrayRef[L<Paws::GameLift::FleetUtilization>]

Collection of objects containing utilization information for each
requested fleet ID.



=head2 NextToken => Str

Token indicating where to resume retrieving results on the next call to
this action. If no token is returned, these results represent the end
of the list.

If a request has a limit that exactly matches the number of remaining
results, a token is returned even though there are no more results to
retrieve.




=cut

1;