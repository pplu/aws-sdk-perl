
package Aws::IAM::CreateRole {
  use Moose;
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', required => 1, traits => ['JSONAttribute'], decode_as => 'URLJSON', method => 'AssumeRolePolicyDocument');
  has Path => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRoleResult');
}
1;
