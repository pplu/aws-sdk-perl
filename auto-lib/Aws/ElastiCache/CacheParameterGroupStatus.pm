package Aws::ElastiCache::CacheParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}
1
