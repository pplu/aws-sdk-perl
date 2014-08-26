package Aws::EC2::InstanceBlockDeviceMappingSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsInstanceBlockDeviceSpecification');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}
1
