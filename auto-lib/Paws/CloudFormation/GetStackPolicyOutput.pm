
package Paws::CloudFormation::GetStackPolicyOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackPolicyBody => (is => 'ro', isa => 'Str');

}
1;