package Aws::EC2::Filter {
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}
1
