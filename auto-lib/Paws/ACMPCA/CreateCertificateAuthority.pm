
package Paws::ACMPCA::CreateCertificateAuthority;
  use Moose;
  has CertificateAuthorityConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::CertificateAuthorityConfiguration', required => 1);
  has CertificateAuthorityType => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has RevocationConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::RevocationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::CreateCertificateAuthorityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreateCertificateAuthority - Arguments for method CreateCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificateAuthority on the 
AWS Certificate Manager Private Certificate Authority service. Use the attributes of this class
as arguments to method CreateCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificateAuthority.

As an example:

  $service_obj->CreateCertificateAuthority(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityConfiguration => L<Paws::ACMPCA::CertificateAuthorityConfiguration>

Name and bit size of the private key algorithm, the name of the signing
algorithm, and X.500 certificate subject information.



=head2 B<REQUIRED> CertificateAuthorityType => Str

The type of the certificate authority. Currently, this must be
B<SUBORDINATE>.

Valid values are: C<"SUBORDINATE">

=head2 IdempotencyToken => Str

Alphanumeric string that can be used to distinguish between calls to
B<CreateCertificateAuthority>. Idempotency tokens time out after five
minutes. Therefore, if you call B<CreateCertificateAuthority> multiple
times with the same idempotency token within a five minute period, ACM
PCA recognizes that you are requesting only one certificate and will
issue only one. If you change the idempotency token for each call,
however, ACM PCA recognizes that you are requesting multiple
certificates.



=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Contains a Boolean value that you can use to enable a certification
revocation list (CRL) for the CA, the name of the S3 bucket to which
ACM PCA will write the CRL, and an optional CNAME alias that you can
use to hide the name of your bucket in the B<CRL Distribution Points>
extension of your CA certificate. For more information, see the
CrlConfiguration structure.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

