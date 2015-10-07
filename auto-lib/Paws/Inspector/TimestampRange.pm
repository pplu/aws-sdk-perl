package Paws::Inspector::TimestampRange;
  use Moose;
  has maximum => (is => 'ro', isa => 'Str');
  has minimum => (is => 'ro', isa => 'Str');
1;
