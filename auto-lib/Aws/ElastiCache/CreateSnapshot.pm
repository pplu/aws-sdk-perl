
package Aws::ElastiCache::CreateSnapshot {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');
}
1;