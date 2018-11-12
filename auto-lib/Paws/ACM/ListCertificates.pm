
package Paws::ACM::ListCertificates;
  use Moose;
  has CertificateStatuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Includes => (is => 'ro', isa => 'Paws::ACM::Filters');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::ListCertificatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListCertificates - Arguments for method ListCertificates on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCertificates on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method ListCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCertificates.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    my $ListCertificatesResponse = $acm->ListCertificates(
      CertificateStatuses => [
        'PENDING_VALIDATION',
        ... # values: PENDING_VALIDATION, ISSUED, INACTIVE, EXPIRED, VALIDATION_TIMED_OUT, REVOKED, FAILED
      ],    # OPTIONAL
      Includes => {
        ExtendedKeyUsage => [
          'TLS_WEB_SERVER_AUTHENTICATION',
          ... # values: TLS_WEB_SERVER_AUTHENTICATION, TLS_WEB_CLIENT_AUTHENTICATION, CODE_SIGNING, EMAIL_PROTECTION, TIME_STAMPING, OCSP_SIGNING, IPSEC_END_SYSTEM, IPSEC_TUNNEL, IPSEC_USER, ANY, NONE, CUSTOM
        ],    # OPTIONAL
        KeyTypes => [
          'RSA_2048',
          ... # values: RSA_2048, RSA_1024, RSA_4096, EC_prime256v1, EC_secp384r1, EC_secp521r1
        ],    # OPTIONAL
        KeyUsage => [
          'DIGITAL_SIGNATURE',
          ... # values: DIGITAL_SIGNATURE, NON_REPUDIATION, KEY_ENCIPHERMENT, DATA_ENCIPHERMENT, KEY_AGREEMENT, CERTIFICATE_SIGNING, CRL_SIGNING, ENCIPHER_ONLY, DECIPHER_ONLY, ANY, CUSTOM
        ],    # OPTIONAL
      },    # OPTIONAL
      MaxItems  => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $CertificateSummaryList =
      $ListCertificatesResponse->CertificateSummaryList;
    my $NextToken = $ListCertificatesResponse->NextToken;

    # Returns a L<Paws::ACM::ListCertificatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/ListCertificates>

=head1 ATTRIBUTES


=head2 CertificateStatuses => ArrayRef[Str|Undef]

Filter the certificate list by status value.



=head2 Includes => L<Paws::ACM::Filters>

Filter the certificate list. For more information, see the Filters
structure.



=head2 MaxItems => Int

Use this parameter when paginating results to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the C<NextToken> element is sent in the
response. Use this C<NextToken> value in a subsequent request to
retrieve additional items.



=head2 NextToken => Str

Use this parameter only when paginating results and only in a
subsequent request after you receive a response with truncated results.
Set it to the value of C<NextToken> from the response you just
received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCertificates in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

