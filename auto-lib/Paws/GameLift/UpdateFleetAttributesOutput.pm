
package Paws::GameLift::UpdateFleetAttributesOutput;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateFleetAttributesOutput

=head1 ATTRIBUTES


=head2 FleetId => Str

Unique identifier for a fleet that was updated.


=head2 _request_id => Str


=cut

1;