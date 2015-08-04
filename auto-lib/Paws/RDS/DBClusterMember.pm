package Paws::RDS::DBClusterMember {
  use Moose;
  has DBClusterParameterGroupStatus => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has IsClusterWriter => (is => 'ro', isa => 'Bool');
}
1;
