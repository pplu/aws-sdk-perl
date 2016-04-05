
package Paws::SES::GetIdentityMailFromDomainAttributesResponse;
  use Moose;
  has MailFromDomainAttributes => (is => 'ro', isa => 'HashRef[Paws::SES::IdentityMailFromDomainAttributes]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityMailFromDomainAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MailFromDomainAttributes => HashRef[L<Paws::SES::IdentityMailFromDomainAttributes>]

A map of identities to custom MAIL FROM attributes.




=cut

