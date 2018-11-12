package Paws::ACMPCA::CertificateAuthorityConfiguration;
  use Moose;
  has KeyAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has SigningAlgorithm => (is => 'ro', isa => 'Str', required => 1);
  has Subject => (is => 'ro', isa => 'Paws::ACMPCA::ASN1Subject', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CertificateAuthorityConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::CertificateAuthorityConfiguration object:

  $service_obj->Method(Att1 => { KeyAlgorithm => $value, ..., Subject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::CertificateAuthorityConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyAlgorithm

=head1 DESCRIPTION

Contains configuration information for your private certificate
authority (CA). This includes information about the class of public key
algorithm and the key pair that your private CA creates when it issues
a certificate, the signature algorithm it uses used when issuing
certificates, and its X.500 distinguished name. You must specify this
information when you call the CreateCertificateAuthority operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyAlgorithm => Str

  Type of the public key algorithm and size, in bits, of the key pair
that your key pair creates when it issues a certificate.


=head2 B<REQUIRED> SigningAlgorithm => Str

  Name of the algorithm your private CA uses to sign certificate
requests.


=head2 B<REQUIRED> Subject => L<Paws::ACMPCA::ASN1Subject>

  Structure that contains X.500 distinguished name information for your
private CA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

