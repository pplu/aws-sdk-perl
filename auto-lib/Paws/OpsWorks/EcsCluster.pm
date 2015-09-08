package Paws::OpsWorks::EcsCluster;
  use Moose;
  has EcsClusterArn => (is => 'ro', isa => 'Str');
  has EcsClusterName => (is => 'ro', isa => 'Str');
  has RegisteredAt => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
1;
