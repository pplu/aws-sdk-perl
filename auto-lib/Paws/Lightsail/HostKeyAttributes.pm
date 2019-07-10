package Paws::Lightsail::HostKeyAttributes;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest']);
  has FingerprintSHA1 => (is => 'ro', isa => 'Str', request_name => 'fingerprintSHA1', traits => ['NameInRequest']);
  has FingerprintSHA256 => (is => 'ro', isa => 'Str', request_name => 'fingerprintSHA256', traits => ['NameInRequest']);
  has NotValidAfter => (is => 'ro', isa => 'Str', request_name => 'notValidAfter', traits => ['NameInRequest']);
  has NotValidBefore => (is => 'ro', isa => 'Str', request_name => 'notValidBefore', traits => ['NameInRequest']);
  has PublicKey => (is => 'ro', isa => 'Str', request_name => 'publicKey', traits => ['NameInRequest']);
  has WitnessedAt => (is => 'ro', isa => 'Str', request_name => 'witnessedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::HostKeyAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::HostKeyAttributes object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., WitnessedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::HostKeyAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Describes the public SSH host keys or the RDP certificate.

=head1 ATTRIBUTES


=head2 Algorithm => Str

  The SSH host key algorithm or the RDP certificate format.

For SSH host keys, the algorithm may be C<ssh-rsa>,
C<ecdsa-sha2-nistp256>, C<ssh-ed25519>, etc. For RDP certificates, the
algorithm is always C<x509-cert>.


=head2 FingerprintSHA1 => Str

  The SHA-1 fingerprint of the returned SSH host key or RDP certificate.

=over

=item *

Example of an SHA-1 SSH fingerprint:

C<SHA1:1CHH6FaAaXjtFOsR/t83vf91SR0>

=item *

Example of an SHA-1 RDP fingerprint:

C<af:34:51:fe:09:f0:e0:da:b8:4e:56:ca:60:c2:10:ff:38:06:db:45>

=back



=head2 FingerprintSHA256 => Str

  The SHA-256 fingerprint of the returned SSH host key or RDP
certificate.

=over

=item *

Example of an SHA-256 SSH fingerprint:

C<SHA256:KTsMnRBh1IhD17HpdfsbzeGA4jOijm5tyXsMjKVbB8o>

=item *

Example of an SHA-256 RDP fingerprint:

C<03:9b:36:9f:4b:de:4e:61:70:fc:7c:c9:78:e7:d2:1a:1c:25:a8:0c:91:f6:7c:e4:d6:a0:85:c8:b4:53:99:68>

=back



=head2 NotValidAfter => Str

  The returned RDP certificate is not valid after this point in time.

This value is listed only for RDP certificates.


=head2 NotValidBefore => Str

  The returned RDP certificate is valid after this point in time.

This value is listed only for RDP certificates.


=head2 PublicKey => Str

  The public SSH host key or the RDP certificate.


=head2 WitnessedAt => Str

  The time that the SSH host key or RDP certificate was recorded by
Lightsail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

