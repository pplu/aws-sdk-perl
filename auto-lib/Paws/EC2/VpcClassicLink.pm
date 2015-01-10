package Paws::EC2::VpcClassicLink {
  use Moose;
  has ClassicLinkEnabled => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'classicLinkEnabled');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1;
