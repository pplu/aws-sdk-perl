
package Aws::SES::GetIdentityVerificationAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerificationAttributes => (is => 'ro', isa => 'Aws::SES::VerificationAttributes', required => 1);

}
1;