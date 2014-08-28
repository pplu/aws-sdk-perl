package Aws::EC2::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsBlockDevice');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}
1
