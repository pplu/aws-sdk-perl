package Aws::EC2::IpRange {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrIp');
}
1;
