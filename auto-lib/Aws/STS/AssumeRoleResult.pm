
package Aws::STS::AssumeRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
1;