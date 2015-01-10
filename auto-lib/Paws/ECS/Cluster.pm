package Paws::ECS::Cluster {
  use Moose;
  has clusterArn => (is => 'ro', isa => 'Str');
  has clusterName => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
}
1;
