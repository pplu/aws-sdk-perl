package Paws::EMR::ClusterSummary {
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::EMR::ClusterStatus');
}
1;
