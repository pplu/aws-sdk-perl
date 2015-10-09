package Paws::ECS::HostEntry;
  use Moose;
  has hostname => (is => 'ro', isa => 'Str', required => 1);
  has ipAddress => (is => 'ro', isa => 'Str', required => 1);
1;
