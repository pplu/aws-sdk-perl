package Aws::RDS::Filter {
  use Moose;
  has FilterName => (is => 'ro', isa => 'Str', required => 1);
  has FilterValue => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
}
1;
