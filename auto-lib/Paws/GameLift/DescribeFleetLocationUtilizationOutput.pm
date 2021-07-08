
package Paws::GameLift::DescribeFleetLocationUtilizationOutput;
  use Moose;
  has FleetUtilization => (is => 'ro', isa => 'Paws::GameLift::FleetUtilization');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetLocationUtilizationOutput

=head1 ATTRIBUTES


=head2 FleetUtilization => L<Paws::GameLift::FleetUtilization>

Utilization information for the requested fleet location. Utilization
objects are returned only for fleets and locations that currently
exist.


=head2 _request_id => Str


=cut

1;