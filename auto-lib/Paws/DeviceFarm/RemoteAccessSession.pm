package Paws::DeviceFarm::RemoteAccessSession;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has BillingMethod => (is => 'ro', isa => 'Str', request_name => 'billingMethod', traits => ['NameInRequest']);
  has ClientId => (is => 'ro', isa => 'Str', request_name => 'clientId', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Device => (is => 'ro', isa => 'Paws::DeviceFarm::Device', request_name => 'device', traits => ['NameInRequest']);
  has DeviceMinutes => (is => 'ro', isa => 'Paws::DeviceFarm::DeviceMinutes', request_name => 'deviceMinutes', traits => ['NameInRequest']);
  has DeviceUdid => (is => 'ro', isa => 'Str', request_name => 'deviceUdid', traits => ['NameInRequest']);
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'endpoint', traits => ['NameInRequest']);
  has HostAddress => (is => 'ro', isa => 'Str', request_name => 'hostAddress', traits => ['NameInRequest']);
  has InstanceArn => (is => 'ro', isa => 'Str', request_name => 'instanceArn', traits => ['NameInRequest']);
  has InteractionMode => (is => 'ro', isa => 'Str', request_name => 'interactionMode', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RemoteDebugEnabled => (is => 'ro', isa => 'Bool', request_name => 'remoteDebugEnabled', traits => ['NameInRequest']);
  has RemoteRecordAppArn => (is => 'ro', isa => 'Str', request_name => 'remoteRecordAppArn', traits => ['NameInRequest']);
  has RemoteRecordEnabled => (is => 'ro', isa => 'Bool', request_name => 'remoteRecordEnabled', traits => ['NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest']);
  has SkipAppResign => (is => 'ro', isa => 'Bool', request_name => 'skipAppResign', traits => ['NameInRequest']);
  has Started => (is => 'ro', isa => 'Str', request_name => 'started', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Stopped => (is => 'ro', isa => 'Str', request_name => 'stopped', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RemoteAccessSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::RemoteAccessSession object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Stopped => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::RemoteAccessSession object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents information about the remote access session.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the remote access session.


=head2 BillingMethod => Str

  The billing method of the remote access session. Possible values
include C<METERED> or C<UNMETERED>. For more information about metered
devices, see AWS Device Farm terminology
(https://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology)."


=head2 ClientId => Str

  Unique identifier of your client for the remote access session. Only
returned if remote debugging is enabled for the remote access session.


=head2 Created => Str

  The date and time the remote access session was created.


=head2 Device => L<Paws::DeviceFarm::Device>

  The device (phone or tablet) used in the remote access session.


=head2 DeviceMinutes => L<Paws::DeviceFarm::DeviceMinutes>

  The number of minutes a device is used in a remote access sesssion
(including setup and teardown minutes).


=head2 DeviceUdid => Str

  Unique device identifier for the remote device. Only returned if remote
debugging is enabled for the remote access session.


=head2 Endpoint => Str

  The endpoint for the remote access sesssion.


=head2 HostAddress => Str

  IP address of the EC2 host where you need to connect to remotely debug
devices. Only returned if remote debugging is enabled for the remote
access session.


=head2 InstanceArn => Str

  The Amazon Resource Name (ARN) of the instance.


=head2 InteractionMode => Str

  The interaction mode of the remote access session. Valid values are:

=over

=item *

INTERACTIVE: You can interact with the iOS device by viewing, touching,
and rotating the screen. You B<cannot> run XCUITest framework-based
tests in this mode.

=item *

NO_VIDEO: You are connected to the device but cannot interact with it
or view the screen. This mode has the fastest test execution speed. You
B<can> run XCUITest framework-based tests in this mode.

=item *

VIDEO_ONLY: You can view the screen but cannot touch or rotate it. You
B<can> run XCUITest framework-based tests and watch the screen in this
mode.

=back



=head2 Message => Str

  A message about the remote access session.


=head2 Name => Str

  The name of the remote access session.


=head2 RemoteDebugEnabled => Bool

  This flag is set to C<true> if remote debugging is enabled for the
remote access session.


=head2 RemoteRecordAppArn => Str

  The Amazon Resource Name (ARN) for the app to be recorded in the remote
access session.


=head2 RemoteRecordEnabled => Bool

  This flag is set to C<true> if remote recording is enabled for the
remote access session.


=head2 Result => Str

  The result of the remote access session. Can be any of the following:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 SkipAppResign => Bool

  When set to C<true>, for private devices, Device Farm will not sign
your app again. For public devices, Device Farm always signs your apps
again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see Do
you modify my app? (https://aws.amazon.com/device-farm/faq/) in the
I<AWS Device Farm FAQs>.


=head2 Started => Str

  The date and time the remote access session was started.


=head2 Status => Str

  The status of the remote access session. Can be any of the following:

=over

=item *

PENDING: A pending status.

=item *

PENDING_CONCURRENCY: A pending concurrency status.

=item *

PENDING_DEVICE: A pending device status.

=item *

PROCESSING: A processing status.

=item *

SCHEDULING: A scheduling status.

=item *

PREPARING: A preparing status.

=item *

RUNNING: A running status.

=item *

COMPLETED: A completed status.

=item *

STOPPING: A stopping status.

=back



=head2 Stopped => Str

  The date and time the remote access session was stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

