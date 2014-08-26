package Aws::RedShift::ClusterParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}
1
