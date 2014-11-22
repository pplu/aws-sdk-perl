package Paws::EC2::InstanceBlockDeviceMappingSpecification {
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Paws::EC2::EbsInstanceBlockDeviceSpecification', traits => ['Unwrapped'], xmlname => 'ebs');
  has NoDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'noDevice');
  has VirtualName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualName');
}
1;
