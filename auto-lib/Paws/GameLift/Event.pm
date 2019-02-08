package Paws::GameLift::Event;
  use Moose;
  has EventCode => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has EventTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PreSignedLogUrl => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Event object:

  $service_obj->Method(Att1 => { EventCode => $value, ..., ResourceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCode

=head1 DESCRIPTION

Log entry describing an event that involves Amazon GameLift resources
(such as a fleet). In addition to tracking activity, event codes and
messages can provide additional information for troubleshooting and
debugging problems.

=head1 ATTRIBUTES


=head2 EventCode => Str

  Type of event being logged. The following events are currently in use:

B<Fleet creation events:>

=over

=item *

FLEET_CREATED -- A fleet record was successfully created with a status
of C<NEW>. Event messaging includes the fleet ID.

=item *

FLEET_STATE_DOWNLOADING -- Fleet status changed from C<NEW> to
C<DOWNLOADING>. The compressed build has started downloading to a fleet
instance for installation.

=item *

FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the
fleet instance.

=item *

FLEET_CREATION_EXTRACTING_BUILD E<ndash> The game server build was
successfully downloaded to an instance, and the build files are now
being extracted from the uploaded build and saved to an instance.
Failure at this stage prevents a fleet from moving to C<ACTIVE> status.
Logs for this stage display a list of the files that are extracted and
saved on the instance. Access the logs by using the URL in
I<PreSignedLogUrl>.

=item *

FLEET_CREATION_RUNNING_INSTALLER E<ndash> The game server build files
were successfully extracted, and the Amazon GameLift is now running the
build's install script (if one is included). Failure in this stage
prevents a fleet from moving to C<ACTIVE> status. Logs for this stage
list the installation steps and whether or not the install completed
successfully. Access the logs by using the URL in I<PreSignedLogUrl>.

=item *

FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was
successful, and the Amazon GameLift is now verifying that the game
server launch paths, which are specified in the fleet's run-time
configuration, exist. If any listed launch path exists, Amazon GameLift
tries to launch a game server process and waits for the process to
report ready. Failures in this stage prevent a fleet from moving to
C<ACTIVE> status. Logs for this stage list the launch paths in the
run-time configuration and indicate whether each is found. Access the
logs by using the URL in I<PreSignedLogUrl>.

=item *

FLEET_STATE_VALIDATING -- Fleet status changed from C<DOWNLOADING> to
C<VALIDATING>.

=item *

FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the run-time
configuration failed because the executable specified in a launch path
does not exist on the instance.

=item *

FLEET_STATE_BUILDING -- Fleet status changed from C<VALIDATING> to
C<BUILDING>.

=item *

FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the
run-time configuration failed because the executable specified in a
launch path failed to run on the fleet instance.

=item *

FLEET_STATE_ACTIVATING -- Fleet status changed from C<BUILDING> to
C<ACTIVATING>.

=item *

FLEET_ACTIVATION_FAILED - The fleet failed to successfully complete one
of the steps in the fleet activation process. This event code indicates
that the game build was successfully downloaded to a fleet instance,
built, and validated, but was not able to start a server process. A
possible reason for failure is that the game server is not reporting
"process ready" to the Amazon GameLift service.

=item *

FLEET_STATE_ACTIVE -- The fleet's status changed from C<ACTIVATING> to
C<ACTIVE>. The fleet is now ready to host game sessions.

=back

B<VPC peering events:>

=over

=item *

FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been
established between the VPC for an Amazon GameLift fleet and a VPC in
your AWS account.

=item *

FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has
failed. Event details and status information (see
DescribeVpcPeeringConnections) provide additional detail. A common
reason for peering failure is that the two VPCs have overlapping CIDR
blocks of IPv4 addresses. To resolve this, change the CIDR block for
the VPC in your AWS account. For more information on VPC peering
failures, see
https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html
(https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html)

=item *

FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been
successfully deleted.

=back

B<Spot instance events:>

=over

=item *

INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a
two-minute notification.

=back

B<Other fleet events:>

=over

=item *

FLEET_SCALING_EVENT -- A change was made to the fleet's capacity
settings (desired instances, minimum/maximum scaling limits). Event
messaging includes the new capacity settings.

=item *

FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made
to the fleet's game session protection policy setting. Event messaging
includes both the old and new policy setting.

=item *

FLEET_DELETED -- A request to delete a fleet was initiated.

=item *

GENERIC_EVENT -- An unspecified event has occurred.

=back



=head2 EventId => Str

  Unique identifier for a fleet event.


=head2 EventTime => Str

  Time stamp indicating when this event occurred. Format is a number
expressed in Unix time as milliseconds (for example "1469498468.057").


=head2 Message => Str

  Additional information related to the event.


=head2 PreSignedLogUrl => Str

  Location of stored logs with additional detail that is related to the
event. This is useful for debugging issues. The URL is valid for 15
minutes. You can also access fleet creation logs through the Amazon
GameLift console.


=head2 ResourceId => Str

  Unique identifier for an event resource, such as a fleet ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

