package Aws::EC2::Subnet {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'availableIpAddressCount');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DefaultForAz => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'defaultForAz');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'mapPublicIpOnLaunch');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
