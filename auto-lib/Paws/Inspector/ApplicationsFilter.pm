package Paws::Inspector::ApplicationsFilter;
  use Moose;
  has applicationNamePatterns => (is => 'ro', isa => 'ArrayRef[Str]');
1;
