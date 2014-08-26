package Aws::AutoScaling::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Ebs => (is => 'ro', isa => 'Aws::AutoScaling::Ebs');
  has NoDevice => (is => 'ro', isa => 'Bool');
  has VirtualName => (is => 'ro', isa => 'Str');
}
1
