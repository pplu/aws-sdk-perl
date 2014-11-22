package Paws::EC2::NetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has Egress => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'egress');
  has IcmpTypeCode => (is => 'ro', isa => 'Paws::EC2::IcmpTypeCode', traits => ['Unwrapped'], xmlname => 'icmpTypeCode');
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', traits => ['Unwrapped'], xmlname => 'portRange');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'protocol');
  has RuleAction => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ruleAction');
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'ruleNumber');
}
1;
