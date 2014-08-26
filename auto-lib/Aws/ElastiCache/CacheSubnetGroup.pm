package Aws::ElastiCache::CacheSubnetGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}
1
