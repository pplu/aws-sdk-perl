package Aws::EC2::InstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
}
1
