
package Paws::GameLift::DescribeFleetLocationCapacityOutput;
  use Moose;
  has FleetCapacity => (is => 'ro', isa => 'Paws::GameLift::FleetCapacity');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetLocationCapacityOutput

=head1 ATTRIBUTES


=head2 FleetCapacity => L<Paws::GameLift::FleetCapacity>

Resource capacity information for the requested fleet location.
Capacity objects are returned only for fleets and locations that
currently exist.


=head2 _request_id => Str


=cut

1;