
package Aws::CloudFormation::GetStackPolicyOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackPolicyBody => (is => 'ro', isa => 'Str');

}
1;