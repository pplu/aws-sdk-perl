
package Paws::GameLift::DescribeFleetPortSettingsOutput;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');
  has Location => (is => 'ro', isa => 'Str');
  has UpdateStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetPortSettingsOutput

=head1 ATTRIBUTES


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a GameLift fleet resource and uniquely identifies
it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet that was requested.


=head2 InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

The port settings for the requested fleet ID.


=head2 Location => Str

The requested fleet location, expressed as an AWS Region code, such as
C<us-west-2>.


=head2 UpdateStatus => Str

The current status of updates to the fleet's port settings in the
requested fleet location. A status of C<PENDING_UPDATE> indicates that
an update was requested for the fleet but has not yet been completed
for the location.

Valid values are: C<"PENDING_UPDATE">
=head2 _request_id => Str


=cut

1;