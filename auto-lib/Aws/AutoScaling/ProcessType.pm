package Aws::AutoScaling::ProcessType {
  use Moose;
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
}
1
