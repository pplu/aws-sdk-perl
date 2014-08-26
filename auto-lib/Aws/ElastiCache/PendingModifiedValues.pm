package Aws::ElastiCache::PendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
}
1
