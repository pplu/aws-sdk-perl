package Aws::EC2::InstanceExportDetails {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has TargetEnvironment => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'targetEnvironment');
}
1
