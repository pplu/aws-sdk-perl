package Aws::RedShift::ClusterSecurityGroup {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::IPRange]');
}
1;
