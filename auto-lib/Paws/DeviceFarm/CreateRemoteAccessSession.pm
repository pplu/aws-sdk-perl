
package Paws::DeviceFarm::CreateRemoteAccessSession;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId' );
  has Configuration => (is => 'ro', isa => 'Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceArn' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has RemoteDebugEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteDebugEnabled' );
  has SshPublicKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sshPublicKey' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRemoteAccessSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateRemoteAccessSessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateRemoteAccessSession - Arguments for method CreateRemoteAccessSession on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRemoteAccessSession on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method CreateRemoteAccessSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRemoteAccessSession.

As an example:

  $service_obj->CreateRemoteAccessSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientId => Str

Unique identifier for the client. If you want access to multiple
devices on the same client, you should pass the same C<clientId> value
in each call to C<CreateRemoteAccessSession>. This is required only if
C<remoteDebugEnabled> is set to true C<true>.



=head2 Configuration => L<Paws::DeviceFarm::CreateRemoteAccessSessionConfiguration>

The configuration information for the remote access session request.



=head2 B<REQUIRED> DeviceArn => Str

The Amazon Resource Name (ARN) of the device for which you want to
create a remote access session.



=head2 Name => Str

The name of the remote access session that you wish to create.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project for which you want to
create a remote access session.



=head2 RemoteDebugEnabled => Bool

Set to C<true> if you want to access devices remotely for debugging in
your remote access session.



=head2 SshPublicKey => Str

The public key of the C<ssh> key pair you want to use for connecting to
remote devices in your remote debugging session. This is only required
if C<remoteDebugEnabled> is set to C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRemoteAccessSession in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

