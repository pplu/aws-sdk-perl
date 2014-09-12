package Aws::ElastiCache::ReplicationGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
