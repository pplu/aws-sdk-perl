package Aws::EC2::VpcAttachment {
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
