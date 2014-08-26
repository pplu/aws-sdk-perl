package Aws::RedShift::ClusterSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
