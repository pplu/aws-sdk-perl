
package Aws::IAM::GetRole {
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');
}
1;