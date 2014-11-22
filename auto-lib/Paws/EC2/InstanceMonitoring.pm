package Paws::EC2::InstanceMonitoring {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
}
1;
