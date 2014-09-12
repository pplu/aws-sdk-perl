package Aws::IAM::Role {
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
}
1
