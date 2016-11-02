
package Paws::SES::GetIdentityMailFromDomainAttributesResponse;
  use Moose;
  has MailFromDomainAttributes => (is => 'ro', isa => 'Paws::SES::MailFromDomainAttributes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityMailFromDomainAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MailFromDomainAttributes => L<Paws::SES::MailFromDomainAttributes>

A map of identities to custom MAIL FROM attributes.


=head2 _request_id => Str


=cut

