package Aws::RedShift::ClusterVersion {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}
1
