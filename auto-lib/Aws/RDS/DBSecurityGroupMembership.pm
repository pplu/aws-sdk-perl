package Aws::RDS::DBSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
