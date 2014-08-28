
package Aws::ElastiCache::DeleteSnapshot {
  use Moose;
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DeleteSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotResult');
}
1;
  