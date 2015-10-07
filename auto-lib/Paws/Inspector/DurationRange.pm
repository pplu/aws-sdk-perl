package Paws::Inspector::DurationRange;
  use Moose;
  has maximum => (is => 'ro', isa => 'Int');
  has minimum => (is => 'ro', isa => 'Int');
1;
