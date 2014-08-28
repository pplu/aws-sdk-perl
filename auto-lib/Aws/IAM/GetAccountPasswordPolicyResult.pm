
package Aws::IAM::GetAccountPasswordPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PasswordPolicy => (is => 'ro', isa => 'Aws::IAM::PasswordPolicy', required => 1);

}
1;