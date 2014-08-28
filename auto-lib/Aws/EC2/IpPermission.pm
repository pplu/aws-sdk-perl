package Aws::EC2::IpPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has FromPort => (is => 'ro', isa => 'Int');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpRange]');
  has ToPort => (is => 'ro', isa => 'Int');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::UserIdGroupPair]');
}
1
