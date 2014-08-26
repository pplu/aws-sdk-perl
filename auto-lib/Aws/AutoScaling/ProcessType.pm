package Aws::AutoScaling::ProcessType {
  use Moose;
  with ('AWS::API::ResultParser');
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
}
1
