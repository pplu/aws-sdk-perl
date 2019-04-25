
package Paws::ACM::RequestCertificate;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidationOption]');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::ACM::CertificateOptions');
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ValidationMethod => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::RequestCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::RequestCertificate - Arguments for method RequestCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestCertificate on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method RequestCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestCertificate.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    my $RequestCertificateResponse = $acm->RequestCertificate(
      DomainName              => 'MyDomainNameString',
      CertificateAuthorityArn => 'MyArn',                # OPTIONAL
      DomainValidationOptions => [
        {
          DomainName       => 'MyDomainNameString',      # min: 1, max: 253
          ValidationDomain => 'MyDomainNameString',      # min: 1, max: 253

        },
        ...
      ],                                                 # OPTIONAL
      IdempotencyToken => 'MyIdempotencyToken',          # OPTIONAL
      Options          => {
        CertificateTransparencyLoggingPreference =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      SubjectAlternativeNames => [
        'MyDomainNameString', ...    # min: 1, max: 253
      ],                             # OPTIONAL
      ValidationMethod => 'EMAIL',   # OPTIONAL
    );

    # Results:
    my $CertificateArn = $RequestCertificateResponse->CertificateArn;

    # Returns a L<Paws::ACM::RequestCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/RequestCertificate>

=head1 ATTRIBUTES


=head2 CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the private certificate authority
(CA) that will be used to issue the certificate. If you do not provide
an ARN and you are trying to request a private certificate, ACM will
attempt to issue a public certificate. For more information about
private CAs, see the AWS Certificate Manager Private Certificate
Authority (PCA)
(http://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html)
user guide. The ARN must have the following form:

C<arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012>



=head2 B<REQUIRED> DomainName => Str

Fully qualified domain name (FQDN), such as www.example.com, that you
want to secure with an ACM certificate. Use an asterisk (*) to create a
wildcard certificate that protects several sites in the same domain.
For example, *.example.com protects www.example.com, site.example.com,
and images.example.com.

The first domain name you enter cannot exceed 63 octets, including
periods. Each subsequent Subject Alternative Name (SAN), however, can
be up to 253 octets in length.



=head2 DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidationOption>]

The domain name that you want ACM to use to send you emails so that you
can validate domain ownership.



=head2 IdempotencyToken => Str

Customer chosen string that can be used to distinguish between calls to
C<RequestCertificate>. Idempotency tokens time out after one hour.
Therefore, if you call C<RequestCertificate> multiple times with the
same idempotency token within one hour, ACM recognizes that you are
requesting only one certificate and will issue only one. If you change
the idempotency token for each call, ACM recognizes that you are
requesting multiple certificates.



=head2 Options => L<Paws::ACM::CertificateOptions>

Currently, you can use this parameter to specify whether to add the
certificate to a certificate transparency log. Certificate transparency
makes it possible to detect SSL/TLS certificates that have been
mistakenly or maliciously issued. Certificates that have not been
logged typically produce an error message in a browser. For more
information, see Opting Out of Certificate Transparency Logging
(http://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).



=head2 SubjectAlternativeNames => ArrayRef[Str|Undef]

Additional FQDNs to be included in the Subject Alternative Name
extension of the ACM certificate. For example, add the name
www.example.net to a certificate for which the C<DomainName> field is
www.example.com if users can reach your site by using either name. The
maximum number of domain names that you can add to an ACM certificate
is 100. However, the initial limit is 10 domain names. If you need more
than 10 names, you must request a limit increase. For more information,
see Limits
(http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html).

The maximum length of a SAN DNS name is 253 octets. The name is made up
of multiple labels separated by periods. No label can be longer than 63
octets. Consider the following examples:

=over

=item *

C<(63 octets).(63 octets).(63 octets).(61 octets)> is legal because the
total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63
octets.

=item *

C<(64 octets).(63 octets).(63 octets).(61 octets)> is not legal because
the total length exceeds 253 octets (64+1+63+1+63+1+61) and the first
label exceeds 63 octets.

=item *

C<(63 octets).(63 octets).(63 octets).(62 octets)> is not legal because
the total length of the DNS name (63+1+63+1+63+1+62) exceeds 253
octets.

=back




=head2 ValidationMethod => Str

The method you want to use if you are requesting a public certificate
to validate that you own or control domain. You can validate with DNS
(http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html)
or validate with email
(http://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html).
We recommend that you use DNS validation.

Valid values are: C<"EMAIL">, C<"DNS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

