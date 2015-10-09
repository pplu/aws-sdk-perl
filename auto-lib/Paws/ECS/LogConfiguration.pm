package Paws::ECS::LogConfiguration;
  use Moose;
  has logDriver => (is => 'ro', isa => 'Str', required => 1);
  has options => (is => 'ro', isa => 'Paws::ECS::LogConfigurationOptionsMap');
1;
