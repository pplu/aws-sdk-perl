
package Paws::SES::VerifyDomainDkimResponse;
  use Moose;
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::VerifyDomainDkimResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DkimTokens => ArrayRef[Str|Undef]

A set of character strings that represent the domain's identity. If the
identity is an email address, the tokens represent the domain of that
address.

Using these tokens, you need to create DNS CNAME records that point to
DKIM public keys that are hosted by Amazon SES. Amazon Web Services
eventually detects that you've updated your DNS records. This detection
process might take up to 72 hours. After successful detection, Amazon
SES is able to DKIM-sign email originating from that domain. (This only
applies to domain identities, not email address identities.)

For more information about creating DNS records using DKIM tokens, see
the Amazon SES Developer Guide
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).


=head2 _request_id => Str


=cut

