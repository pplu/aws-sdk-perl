package Aws::EC2::LaunchSpecification {
  use Moose;
  has AddressingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'addressingType');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::RunInstancesMonitoringEnabled', traits => ['Unwrapped'], xmlname => 'monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::SpotPlacement', traits => ['Unwrapped'], xmlname => 'placement');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userData');
}
1;
