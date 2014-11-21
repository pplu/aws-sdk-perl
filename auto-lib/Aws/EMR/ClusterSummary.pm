package Aws::EMR::ClusterSummary {
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
}
1;
