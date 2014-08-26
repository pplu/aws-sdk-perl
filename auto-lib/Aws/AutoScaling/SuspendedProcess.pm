package Aws::AutoScaling::SuspendedProcess {
  use Moose;
  with ('AWS::API::ResultParser');
  has ProcessName => (is => 'ro', isa => 'Str');
  has SuspensionReason => (is => 'ro', isa => 'Str');
}
1
