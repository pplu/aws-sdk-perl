package Aws::RDS::DBParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}
1
