
package Paws::GameLift::CreateFleetOutput;
  use Moose;
  has FleetAttributes => (is => 'ro', isa => 'Paws::GameLift::FleetAttributes');
  has LocationStates => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationState]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleetOutput

=head1 ATTRIBUTES


=head2 FleetAttributes => L<Paws::GameLift::FleetAttributes>

The properties for the new fleet, including the current status. All
fleets are placed in C<NEW> status on creation.


=head2 LocationStates => ArrayRef[L<Paws::GameLift::LocationState>]

The fleet's locations and life-cycle status of each location. For new
fleets, the status of all locations is set to C<NEW>. During fleet
creation, GameLift updates each location status as instances are
deployed there and prepared for game hosting. This list includes an
entry for the fleet's home Region. For fleets with no remote locations,
only one entry, representing the home Region, is returned.


=head2 _request_id => Str


=cut

1;