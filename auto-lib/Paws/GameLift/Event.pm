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

=over

=item *

General events:

=over

=item *

B<GENERIC_EVENT> E<ndash> An unspecified event has occurred.

=back

=item *

Fleet creation events:

=over

=item *

B<FLEET_CREATED> E<ndash> A fleet record was successfully created with
a status of NEW. Event messaging includes the fleet ID.

=item *

B<FLEET_STATE_DOWNLOADING> E<ndash> Fleet status changed from NEW to
DOWNLOADING. The compressed build has started downloading to a fleet
instance for installation.

=item *

B<FLEET_BINARY_DOWNLOAD_FAILED> E<ndash> The build failed to download
to the fleet instance.

=item *

B<FLEET_CREATION_EXTRACTING_BUILD> E<ndash> The game server build was
successfully downloaded to an instance, and the build files are now
being extracted from the uploaded build and saved to an instance.
Failure at this stage prevents a fleet from moving to ACTIVE status.
Logs for this stage display a list of the files that are extracted and
saved on the instance. Access the logs by using the URL in
I<PreSignedLogUrl>).

=item *

B<FLEET_CREATION_RUNNING_INSTALLER> E<ndash> The game server build
files were successfully extracted, and the Amazon GameLift is now
running the build's install script (if one is included). Failure in
this stage prevents a fleet from moving to ACTIVE status. Logs for this
stage list the installation steps and whether or not the install
completed sucessfully. Access the logs by using the URL in
I<PreSignedLogUrl>).

=item *

B<FLEET_CREATION_VALIDATING_RUNTIME_CONFIG> E<ndash> The build process
was successful, and the Amazon GameLift is now verifying that the game
server launch path(s), which are specified in the fleet's run-time
configuration, exist. If any listed launch path exists, Amazon GameLift
tries to launch a game server process and waits for the process to
report ready. Failures in this stage prevent a fleet from moving to
ACTIVE status. Logs for this stage list the launch paths in the
run-time configuration and indicate whether each is found. Access the
logs by using the URL in I<PreSignedLogUrl>). Once the game server is
launched, failures and crashes are logged; these logs can be downloaded
from the Amazon GameLift console.

=item *

B<FLEET_STATE_VALIDATING> E<ndash> Fleet status changed from
DOWNLOADING to VALIDATING.

=item *

B<FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND> E<ndash> Validation of the
run-time validation failed because the executable specified in a launch
path does not exist on the instance.

=item *

B<FLEET_STATE_BUILDING> E<ndash> Fleet status changed from VALIDATING
to BUILDING.

=item *

B<FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE> E<ndash> Validation of
the runtime validation failed because the executable specified in a
launch path failed to run on the fleet instance.

=item *

B<FLEET_STATE_ACTIVATING> E<ndash> Fleet status changed from BUILDING
to ACTIVATING.

=item *

B<FLEET_ACTIVATION_FAILED> - The fleet failed to successfully complete
one of the steps in the fleet activation process. This event code
indicates that the game build was successfully downloaded to a fleet
instance, built, and validated, but was not able to start a server
process. A possible reason for failure is that the game server is not
reporting "process ready" to the Amazon GameLift service.

=item *

B<FLEET_STATE_ACTIVE> E<ndash> The fleet's status changed from
ACTIVATING to ACTIVE. The fleet is now ready to host game sessions.

=back

=item *

Other fleet events:

=over

=item *

B<FLEET_SCALING_EVENT> E<ndash> A change was made to the fleet's
capacity settings (desired instances, minimum/maximum scaling limits).
Event messaging includes the new capacity settings.

=item *

B<FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED> E<ndash> A change
was made to the fleet's game session protection policy setting. Event
messaging includes both the old and new policy setting.

=item *

B<FLEET_DELETED> E<ndash> A request to delete a fleet was initiated.

=back

=back



=head2 EventId => Str

  Unique identifier for a fleet event.


=head2 EventTime => Str

  Time stamp indicating when this event occurred. Format is a number
expressed in Unix time as milliseconds (for example "1469498468.057").


=head2 Message => Str

  Additional information related to the event.


=head2 PreSignedLogUrl => Str

  Location of stored logs with additional detail related to the event,
useful for debugging issues. The URL is valid for 15 minutes. Fleet
creation logs can also be accessed through the Amazon GameLift console.


=head2 ResourceId => Str

  Unique identifier for an event resource, such as a fleet ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

