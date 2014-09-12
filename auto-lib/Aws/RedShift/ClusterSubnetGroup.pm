package Aws::RedShift::ClusterSubnetGroup {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}
1
