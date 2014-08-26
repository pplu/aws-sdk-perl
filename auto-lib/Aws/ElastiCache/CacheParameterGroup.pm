package Aws::ElastiCache::CacheParameterGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}
1
