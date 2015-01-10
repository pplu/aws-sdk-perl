package Paws::ECS::ContainerOverride {
  use Moose;
  has command => (is => 'ro', isa => 'ArrayRef[Str]');
  has name => (is => 'ro', isa => 'Str');
}
1;
