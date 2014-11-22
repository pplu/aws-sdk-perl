package Paws::EC2::InstanceBlockDeviceMapping {
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Paws::EC2::EbsInstanceBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
}
1;
