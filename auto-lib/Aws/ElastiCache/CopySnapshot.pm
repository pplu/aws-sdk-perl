
package Aws::ElastiCache::CopySnapshot {
  use Moose;
  has SourceSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopySnapshotResult');
}
1;