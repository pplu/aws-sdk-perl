package Paws::RDS::DBClusterOptionGroupStatus {
  use Moose;
  has DBClusterOptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1;
