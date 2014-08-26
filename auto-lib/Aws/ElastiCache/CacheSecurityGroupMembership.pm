package Aws::ElastiCache::CacheSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
