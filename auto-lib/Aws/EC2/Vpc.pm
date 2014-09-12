package Aws::EC2::Vpc {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'isDefault');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
