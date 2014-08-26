package Aws::ElastiCache::ReplicationGroupPendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
}
1
