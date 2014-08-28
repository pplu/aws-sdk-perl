package Aws::EC2::LaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AddressingType => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::MonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]');
  has Placement => (is => 'ro', isa => 'Aws::EC2::SpotPlacement');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}
1
