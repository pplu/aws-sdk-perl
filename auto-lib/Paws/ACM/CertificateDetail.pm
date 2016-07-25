package Paws::ACM::CertificateDetail;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidation]');
  has FailureReason => (is => 'ro', isa => 'Str');
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

Contains detailed metadata about an ACM Certificate. This structure is
returned in the response to a DescribeCertificate request.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) of the certificate. For more information
about ARNs, see Amazon Resource Names (ARNs) and AWS Service
Namespaces.


=head2 CreatedAt => Str

  The time at which the certificate was requested.


=head2 DomainName => Str

  The fully qualified domain name (FQDN) for the certificate, such as
www.example.com or example.com.


=head2 DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidation>]

  Contains information about the email address or addresses used for
domain validation.


=head2 FailureReason => Str

  The reason the certificate request failed. This value exists only when
the structure's C<Status> is C<FAILED>. For more information, see
Certificate Request Failed in the I<AWS Certificate Manager User
Guide>.


=head2 InUseBy => ArrayRef[Str]

  A list of ARNs for the resources that are using the certificate. An ACM
Certificate can be used by multiple AWS resources.


=head2 IssuedAt => Str

  The time at which the certificate was issued.


=head2 Issuer => Str

  The X.500 distinguished name of the CA that issued and signed the
certificate.


=head2 KeyAlgorithm => Str

  The algorithm used to generate the key pair (the public and private
key). Currently the only supported value is C<RSA_2048>.


=head2 NotAfter => Str

  The time after which the certificate is not valid.


=head2 NotBefore => Str

  The time before which the certificate is not valid.


=head2 RevocationReason => Str

  The reason the certificate was revoked. This value exists only when the
certificate status is C<REVOKED>.


=head2 RevokedAt => Str

  The time at which the certificate was revoked. This value exists only
when the certificate status is C<REVOKED>.


=head2 Serial => Str

  The serial number of the certificate.


=head2 SignatureAlgorithm => Str

  The algorithm used to generate a signature. Currently the only
supported value is C<SHA256WITHRSA>.


=head2 Status => Str

  The status of the certificate.


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

