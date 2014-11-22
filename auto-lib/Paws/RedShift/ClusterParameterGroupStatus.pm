package Paws::RedShift::ClusterParameterGroupStatus {
  use Moose;
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}
1;
