package Paws::RDS::DBClusterParameterGroup {
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}
1;
