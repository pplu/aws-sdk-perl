
package Paws::SES::GetIdentityVerificationAttributesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has VerificationAttributes => (is => 'ro', isa => 'Paws::SES::VerificationAttributes', required => 1);

}
1;