package Paws::Lightsail::InstanceAccessDetails;
  use Moose;
  has CertKey => (is => 'ro', isa => 'Str', request_name => 'certKey', traits => ['NameInRequest']);
  has ExpiresAt => (is => 'ro', isa => 'Str', request_name => 'expiresAt', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has Password => (is => 'ro', isa => 'Str', request_name => 'password', traits => ['NameInRequest']);
  has PasswordData => (is => 'ro', isa => 'Paws::Lightsail::PasswordData', request_name => 'passwordData', traits => ['NameInRequest']);
  has PrivateKey => (is => 'ro', isa => 'Str', request_name => 'privateKey', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceAccessDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceAccessDetails object:

  $service_obj->Method(Att1 => { CertKey => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceAccessDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CertKey

=head1 DESCRIPTION

The parameters for gaining temporary access to one of your Amazon
Lightsail instances.

=head1 ATTRIBUTES


=head2 CertKey => Str

  For SSH access, the public key to use when accessing your instance For
OpenSSH clients (e.g., command line SSH), you should save this value to
C<tempkey-cert.pub>.


=head2 ExpiresAt => Str

  For SSH access, the date on which the temporary keys expire.


=head2 InstanceName => Str

  The name of this Amazon Lightsail instance.


=head2 IpAddress => Str

  The public IP address of the Amazon Lightsail instance.


=head2 Password => Str

  For RDP access, the password for your Amazon Lightsail instance.
Password will be an empty string if the password for your new instance
is not ready yet. When you create an instance, it can take up to 15
minutes for the instance to be ready.

If you create an instance using any key pair other than the default
(C<LightsailDefaultKeyPair>), C<password> will always be an empty
string.

If you change the Administrator password on the instance, Lightsail
will continue to return the original password value. When accessing the
instance using RDP, you need to manually enter the Administrator
password after changing it from the default.


=head2 PasswordData => L<Paws::Lightsail::PasswordData>

  For a Windows Server-based instance, an object with the data you can
use to retrieve your password. This is only needed if C<password> is
empty and the instance is not new (and therefore the password is not
ready yet). When you create an instance, it can take up to 15 minutes
for the instance to be ready.


=head2 PrivateKey => Str

  For SSH access, the temporary private key. For OpenSSH clients (e.g.,
command line SSH), you should save this value to C<tempkey>).


=head2 Protocol => Str

  The protocol for these Amazon Lightsail instance access details.


=head2 Username => Str

  The user name to use when logging in to the Amazon Lightsail instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

