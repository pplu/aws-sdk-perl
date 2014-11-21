
package Aws::ElastiCache::DeleteCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DeleteCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');
}
1;