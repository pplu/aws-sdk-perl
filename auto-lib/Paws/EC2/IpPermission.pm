package Paws::EC2::IpPermission {
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'fromPort');
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipProtocol');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpRange]', traits => ['Unwrapped'], xmlname => 'ipRanges');
  has ToPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'toPort');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', traits => ['Unwrapped'], xmlname => 'groups');
}
1;
