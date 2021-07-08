
package Paws::GameLift::CreateFleetLocationsOutput;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has LocationStates => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationState]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateFleetLocationsOutput

=head1 ATTRIBUTES


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a GameLift fleet resource and uniquely identifies
it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet that was updated with new locations.


=head2 LocationStates => ArrayRef[L<Paws::GameLift::LocationState>]

The remote locations that are being added to the fleet, and the
life-cycle status of each location. For new locations, the status is
set to C<NEW>. During location creation, GameLift updates each
location's status as instances are deployed there and prepared for game
hosting. This list does not include the fleet home Region or any remote
locations that were already added to the fleet.


=head2 _request_id => Str


=cut

1;