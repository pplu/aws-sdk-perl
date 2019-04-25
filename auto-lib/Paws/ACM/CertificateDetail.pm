package Paws::ACM::CertificateDetail;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidation]');
  has ExtendedKeyUsages => (is => 'ro', isa => 'ArrayRef[Paws::ACM::ExtendedKeyUsage]');
  has FailureReason => (is => 'ro', isa => 'Str');
  has ImportedAt => (is => 'ro', isa => 'Str');
  has InUseBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IssuedAt => (is => 'ro', isa => 'Str');
  has Issuer => (is => 'ro', isa => 'Str');
  has KeyAlgorithm => (is => 'ro', isa => 'Str');
  has KeyUsages => (is => 'ro', isa => 'ArrayRef[Paws::ACM::KeyUsage]');
  has NotAfter => (is => 'ro', isa => 'Str');
  has NotBefore => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::ACM::CertificateOptions');
  has RenewalEligibility => (is => 'ro', isa => 'Str');
  has RenewalSummary => (is => 'ro', isa => 'Paws::ACM::RenewalSummary');
  has RevocationReason => (is => 'ro', isa => 'Str');
  has RevokedAt => (is => 'ro', isa => 'Str');
  has Serial => (is => 'ro', isa => 'Str');
  has SignatureAlgorithm => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::CertificateDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::CertificateDetail object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::CertificateDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

Contains metadata about an ACM certificate. This structure is returned
in the response to a DescribeCertificate request.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) of the certificate. For more information
about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.


=head2 CertificateAuthorityArn => Str

  The Amazon Resource Name (ARN) of the ACM PCA private certificate
authority (CA) that issued the certificate. This has the following
format:

C<arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012>


=head2 CreatedAt => Str

  The time at which the certificate was requested. This value exists only
when the certificate type is C<AMAZON_ISSUED>.


=head2 DomainName => Str

  The fully qualified domain name for the certificate, such as
www.example.com or example.com.


=head2 DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidation>]

  Contains information about the initial validation of each domain name
that occurs as a result of the RequestCertificate request. This field
exists only when the certificate type is C<AMAZON_ISSUED>.


=head2 ExtendedKeyUsages => ArrayRef[L<Paws::ACM::ExtendedKeyUsage>]

  Contains a list of Extended Key Usage X.509 v3 extension objects. Each
object specifies a purpose for which the certificate public key can be
used and consists of a name and an object identifier (OID).


=head2 FailureReason => Str

  The reason the certificate request failed. This value exists only when
the certificate status is C<FAILED>. For more information, see
Certificate Request Failed
(http://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed)
in the I<AWS Certificate Manager User Guide>.


=head2 ImportedAt => Str

  The date and time at which the certificate was imported. This value
exists only when the certificate type is C<IMPORTED>.


=head2 InUseBy => ArrayRef[Str|Undef]

  A list of ARNs for the AWS resources that are using the certificate. A
certificate can be used by multiple AWS resources.


=head2 IssuedAt => Str

  The time at which the certificate was issued. This value exists only
when the certificate type is C<AMAZON_ISSUED>.


=head2 Issuer => Str

  The name of the certificate authority that issued and signed the
certificate.


=head2 KeyAlgorithm => Str

  The algorithm that was used to generate the public-private key pair.


=head2 KeyUsages => ArrayRef[L<Paws::ACM::KeyUsage>]

  A list of Key Usage X.509 v3 extension objects. Each object is a string
value that identifies the purpose of the public key contained in the
certificate. Possible extension values include DIGITAL_SIGNATURE,
KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.


=head2 NotAfter => Str

  The time after which the certificate is not valid.


=head2 NotBefore => Str

  The time before which the certificate is not valid.


=head2 Options => L<Paws::ACM::CertificateOptions>

  Value that specifies whether to add the certificate to a transparency
log. Certificate transparency makes it possible to detect SSL
certificates that have been mistakenly or maliciously issued. A browser
might respond to certificate that has not been logged by showing an
error message. The logs are cryptographically secure.


=head2 RenewalEligibility => Str

  Specifies whether the certificate is eligible for renewal.


=head2 RenewalSummary => L<Paws::ACM::RenewalSummary>

  Contains information about the status of ACM's managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
the certificate. This field exists only when the certificate type is
C<AMAZON_ISSUED>.


=head2 RevocationReason => Str

  The reason the certificate was revoked. This value exists only when the
certificate status is C<REVOKED>.


=head2 RevokedAt => Str

  The time at which the certificate was revoked. This value exists only
when the certificate status is C<REVOKED>.


=head2 Serial => Str

  The serial number of the certificate.


=head2 SignatureAlgorithm => Str

  The algorithm that was used to sign the certificate.


=head2 Status => Str

  The status of the certificate.


=head2 Subject => Str

  The name of the entity that is associated with the public key contained
in the certificate.


=head2 SubjectAlternativeNames => ArrayRef[Str|Undef]

  One or more domain names (subject alternative names) included in the
certificate. This list contains the domain names that are bound to the
public key that is contained in the certificate. The subject
alternative names include the canonical domain name (CN) of the
certificate and additional domain names that can be used to connect to
the website.


=head2 Type => Str

  The source of the certificate. For certificates provided by ACM, this
value is C<AMAZON_ISSUED>. For certificates that you imported with
ImportCertificate, this value is C<IMPORTED>. ACM does not provide
managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
imported certificates. For more information about the differences
between certificates that you import and those that ACM provides, see
Importing Certificates
(http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the I<AWS Certificate Manager User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

