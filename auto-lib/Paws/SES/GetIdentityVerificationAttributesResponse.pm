
package Paws::SES::GetIdentityVerificationAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has VerificationAttributes => (is => 'ro', isa => 'Paws::SES::VerificationAttributes', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityVerificationAttributesResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> VerificationAttributes => Paws::SES::VerificationAttributes

  

A map of Identities to IdentityVerificationAttributes objects.











=cut

