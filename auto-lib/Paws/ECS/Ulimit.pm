package Paws::ECS::Ulimit;
  use Moose;
  has hardLimit => (is => 'ro', isa => 'Int', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has softLimit => (is => 'ro', isa => 'Int', required => 1);
1;
