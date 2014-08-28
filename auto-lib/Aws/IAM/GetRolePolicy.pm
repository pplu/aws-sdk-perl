
package Aws::IAM::GetRolePolicy {
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRolePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetRolePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetRolePolicyResult');
}
1;
  