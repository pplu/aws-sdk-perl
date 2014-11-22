
package Paws::SES::VerifyDomainIdentityResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

}
1;