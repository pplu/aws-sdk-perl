package Paws::IAM::Position;
  use Moose;
  has Column => (is => 'ro', isa => 'Int');
  has Line => (is => 'ro', isa => 'Int');
1;
