package Paws::ACM::CertificateDetail;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidation]');
  has InUseBy => (is => 'ro', isa => 'ArrayRef[Str]');
  has IssuedAt => (is => 'ro', isa => 'Str');
  has Issuer => (is => 'ro', isa => 'Str');
  has KeyAlgorithm => (is => 'ro', isa => 'Str');
  has NotAfter => (is => 'ro', isa => 'Str');
  has NotBefore => (is => 'ro', isa => 'Str');
  has RevocationReason => (is => 'ro', isa => 'Str');
  has RevokedAt => (is => 'ro', isa => 'Str');
  has Serial => (is => 'ro', isa => 'Str');
  has SignatureAlgorithm => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str]');
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

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., SubjectAlternativeNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::CertificateDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

This structure is returned in the response object of the
DescribeCertificate action.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  Amazon Resource Name (ARN) of the certificate. This is of the form:

C<arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012>

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces.


=head2 CreatedAt => Str

  Time at which the certificate was requested.


=head2 DomainName => Str

  Fully qualified domain name (FQDN), such as www.example.com or
example.com, for the certificate.


=head2 DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidation>]

  References a DomainValidation structure that contains the domain name
in the certificate and the email address that can be used for
validation.


=head2 InUseBy => ArrayRef[Str]

  List that identifies ARNs that are using the certificate. A single ACM
Certificate can be used by multiple AWS resources.


=head2 IssuedAt => Str

  Time at which the certificate was issued.


=head2 Issuer => Str

  The X.500 distinguished name of the CA that issued and signed the
certificate.


=head2 KeyAlgorithm => Str

  Asymmetric algorithm used to generate the public and private key pair.
Currently the only supported value is C<RSA_2048>.


=head2 NotAfter => Str

  Time after which the certificate is not valid.


=head2 NotBefore => Str

  Time before which the certificate is not valid.


=head2 RevocationReason => Str

  A C<RevocationReason> enumeration value that indicates why the
certificate was revoked. This value exists only if the certificate has
been revoked. This can be one of the following vales:

=over

=item *

UNSPECIFIED

=item *

KEY_COMPROMISE

=item *

CA_COMPROMISE

=item *

AFFILIATION_CHANGED

=item *

SUPERCEDED

=item *

CESSATION_OF_OPERATION

=item *

CERTIFICATE_HOLD

=item *

REMOVE_FROM_CRL

=item *

PRIVILEGE_WITHDRAWN

=item *

A_A_COMPROMISE

=back



=head2 RevokedAt => Str

  The time, if any, at which the certificate was revoked. This value
exists only if the certificate has been revoked.


=head2 Serial => Str

  String that contains the serial number of the certificate.


=head2 SignatureAlgorithm => Str

  Algorithm used to generate a signature. Currently the only supported
value is C<SHA256WITHRSA>.


=head2 Status => Str

  A C<CertificateStatus> enumeration value that can contain one of the
following:

=over

=item *

PENDING_VALIDATION

=item *

ISSUED

=item *

INACTIVE

=item *

EXPIRED

=item *

REVOKED

=item *

FAILED

=item *

VALIDATION_TIMED_OUT

=back



=head2 Subject => Str

  The X.500 distinguished name of the entity associated with the public
key contained in the certificate.


=head2 SubjectAlternativeNames => ArrayRef[Str]

  One or more domain names (subject alternative names) included in the
certificate request. After the certificate is issued, this list
includes the domain names bound to the public key contained in the
certificate. The subject alternative names include the canonical domain
name (CN) of the certificate and additional domain names that can be
used to connect to the website.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

