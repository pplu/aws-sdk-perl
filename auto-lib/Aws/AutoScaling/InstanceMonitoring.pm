package Aws::AutoScaling::InstanceMonitoring {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool');
}
1
