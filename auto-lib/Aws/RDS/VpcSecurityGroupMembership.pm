package Aws::RDS::VpcSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}
1
