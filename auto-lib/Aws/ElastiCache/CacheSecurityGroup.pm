package Aws::ElastiCache::CacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::EC2SecurityGroup]');
  has OwnerId => (is => 'ro', isa => 'Str');
}
1;
