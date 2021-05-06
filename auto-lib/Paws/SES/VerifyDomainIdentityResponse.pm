
package Paws::SES::VerifyDomainIdentityResponse;
  use Moose;
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::VerifyDomainIdentityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VerificationToken => Str

A TXT record that you must place in the DNS settings of the domain to
complete domain verification with Amazon SES.

As Amazon SES searches for the TXT record, the domain's verification
status is "Pending". When Amazon SES detects the record, the domain's
verification status changes to "Success". If Amazon SES is unable to
detect the record within 72 hours, the domain's verification status
changes to "Failed." In that case, if you still want to verify the
domain, you must restart the verification process from the beginning.


=head2 _request_id => Str


=cut

