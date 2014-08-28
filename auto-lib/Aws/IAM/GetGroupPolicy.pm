
package Aws::IAM::GetGroupPolicy {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetGroupPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupPolicyResult');
}
1;
  