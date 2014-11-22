
package Paws::IAM::GetAccountPasswordPolicyResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has PasswordPolicy => (is => 'ro', isa => 'Paws::IAM::PasswordPolicy', required => 1);

}
1;