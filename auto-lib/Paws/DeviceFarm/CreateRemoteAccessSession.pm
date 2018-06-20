
package Paws::DeviceFarm::CreateRemoteAccessSession;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId' );
  has Configuration => (is => 'ro', isa => 'Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceArn' , required => 1);
  has InstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceArn' );
  has InteractionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interactionMode' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has RemoteDebugEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteDebugEnabled' );
  has RemoteRecordAppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'remoteRecordAppArn' );
  has RemoteRecordEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteRecordEnabled' );
  has SkipAppResign => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'skipAppResign' );
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRemoteAccessSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateRemoteAccessSessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateRemoteAccessSession - Arguments for method CreateRemoteAccessSession on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRemoteAccessSession on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateRemoteAccessSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRemoteAccessSession.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To create a remote access session
    # The following example creates a remote access session named MySession.
    my $CreateRemoteAccessSessionResult =
      $devicefarm->CreateRemoteAccessSession(
      {
        'Configuration' => {
          'BillingMethod' => 'METERED'
        },
        'DeviceArn' => 'arn:aws:devicefarm:us-west-2::device:123EXAMPLE',
        'Name'      => 'MySession',
        'ProjectArn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456'
      }
      );

    # Results:
    my $remoteAccessSession =
      $CreateRemoteAccessSessionResult->remoteAccessSession;

    # Returns a L<Paws::DeviceFarm::CreateRemoteAccessSessionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateRemoteAccessSession>

=head1 ATTRIBUTES


=head2 ClientId => Str

Unique identifier for the client. If you want access to multiple
devices on the same client, you should pass the same C<clientId> value
in each call to C<CreateRemoteAccessSession>. This is required only if
C<remoteDebugEnabled> is set to C<true>.



=head2 Configuration => L<Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration>

The configuration information for the remote access session request.



=head2 B<REQUIRED> DeviceArn => Str

The Amazon Resource Name (ARN) of the device for which you want to
create a remote access session.



=head2 InstanceArn => Str

The Amazon Resource Name (ARN) of the device instance for which you
want to create a remote access session.



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


Valid values are: C<"INTERACTIVE">, C<"NO_VIDEO">, C<"VIDEO_ONLY">

=head2 Name => Str

The name of the remote access session that you wish to create.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project for which you want to
create a remote access session.



=head2 RemoteDebugEnabled => Bool

Set to C<true> if you want to access devices remotely for debugging in
your remote access session.



=head2 RemoteRecordAppArn => Str

The Amazon Resource Name (ARN) for the app to be recorded in the remote
access session.



=head2 RemoteRecordEnabled => Bool

Set to C<true> to enable remote recording for the remote access
session.



=head2 SkipAppResign => Bool

When set to C<true>, for private devices, Device Farm will not sign
your app again. For public devices, Device Farm always signs your apps
again and this parameter has no effect.

For more information about how Device Farm re-signs your app(s), see Do
you modify my app? (https://aws.amazon.com/device-farm/faq/) in the
I<AWS Device Farm FAQs>.



=head2 SshPublicKey => Str

The public key of the C<ssh> key pair you want to use for connecting to
remote devices in your remote debugging session. This is only required
if C<remoteDebugEnabled> is set to C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRemoteAccessSession in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

