
package Paws::SESv2::PutEmailIdentityDkimSigningAttributesResponse;
  use Moose;
  has DkimStatus => (is => 'ro', isa => 'Str');
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutEmailIdentityDkimSigningAttributesResponse

=head1 ATTRIBUTES


=head2 DkimStatus => Str

The DKIM authentication status of the identity. Amazon SES determines
the authentication status by searching for specific records in the DNS
configuration for your domain. If you used Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html)
to set up DKIM authentication, Amazon SES tries to find three unique
CNAME records in the DNS configuration for your domain.

If you provided a public key to perform DKIM authentication, Amazon SES
tries to find a TXT record that uses the selector that you specified.
The value of the TXT record must be a public key that's paired with the
private key that you specified in the process of creating the identity.

The status can be one of the following:

=over

=item *

C<PENDING> E<ndash> The verification process was initiated, but Amazon
SES hasn't yet detected the DKIM records in the DNS configuration for
the domain.

=item *

C<SUCCESS> E<ndash> The verification process completed successfully.

=item *

C<FAILED> E<ndash> The verification process failed. This typically
occurs when Amazon SES fails to find the DKIM records in the DNS
configuration of the domain.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue is preventing Amazon
SES from determining the DKIM authentication status of the domain.

=item *

C<NOT_STARTED> E<ndash> The DKIM verification process hasn't been
initiated for the domain.

=back


Valid values are: C<"PENDING">, C<"SUCCESS">, C<"FAILED">, C<"TEMPORARY_FAILURE">, C<"NOT_STARTED">
=head2 DkimTokens => ArrayRef[Str|Undef]

If you used Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html)
to configure DKIM authentication for the domain, then this object
contains a set of unique strings that you use to create a set of CNAME
records that you add to the DNS configuration for your domain. When
Amazon SES detects these records in the DNS configuration for your
domain, the DKIM authentication process is complete.

If you configured DKIM authentication for the domain by providing your
own public-private key pair, then this object contains the selector
that's associated with your public key.

Regardless of the DKIM authentication method you use, Amazon SES
searches for the appropriate records in the DNS configuration of the
domain for up to 72 hours.


=head2 _request_id => Str


=cut

