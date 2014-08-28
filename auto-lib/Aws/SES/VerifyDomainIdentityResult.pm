
package Aws::SES::VerifyDomainIdentityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

}
1;