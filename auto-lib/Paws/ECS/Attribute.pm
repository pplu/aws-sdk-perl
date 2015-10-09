package Paws::ECS::Attribute;
  use Moose;
  has name => (is => 'ro', isa => 'Str', required => 1);
  has value => (is => 'ro', isa => 'Str');
1;
