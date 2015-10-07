package Paws::Inspector::Parameter;
  use Moose;
  has name => (is => 'ro', isa => 'Str');
  has value => (is => 'ro', isa => 'Str');
1;
