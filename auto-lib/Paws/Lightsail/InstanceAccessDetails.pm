package Paws::Lightsail::InstanceAccessDetails;
  use Moose;
  has CertKey => (is => 'ro', isa => 'Str', request_name => 'certKey', traits => ['NameInRequest']);
  has ExpiresAt => (is => 'ro', isa => 'Str', request_name => 'expiresAt', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has Password => (is => 'ro', isa => 'Str', request_name => 'password', traits => ['NameInRequest']);
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

  For RDP access, the temporary password of the Amazon EC2 instance.


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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

