
package Paws::CloudFormation::GetStackPolicy {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStackPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::GetStackPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStackPolicyResult');
}
1;