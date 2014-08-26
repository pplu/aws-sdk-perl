package Aws::EC2::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
  has NoDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'noDevice');
  has VirtualName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualName');
}
1
