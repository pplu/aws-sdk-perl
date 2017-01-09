
package Paws::GameLift::CreateFleetOutput;
  use Moose;
  has FleetAttributes => (is => 'ro', isa => 'Paws::GameLift::FleetAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleetOutput

=head1 ATTRIBUTES


=head2 FleetAttributes => L<Paws::GameLift::FleetAttributes>

Properties for the newly created fleet.


=head2 _request_id => Str


=cut

1;