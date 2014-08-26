package Aws::EC2::IpRange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrIp');
}
1
