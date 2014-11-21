package Aws::EC2::ImportInstanceLaunchSpecification {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'additionalInfo');
  has Architecture => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'architecture');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'GroupName');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceInitiatedShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Monitoring => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'monitoring');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement', traits => ['Unwrapped'], xmlname => 'placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userData');
}
1;
