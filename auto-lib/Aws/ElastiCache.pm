
use AWS::API;


package Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
package Aws::ElastiCache::CopySnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::CreateCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::CreateCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroup');

}
package Aws::ElastiCache::CreateCacheSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
package Aws::ElastiCache::CreateCacheSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
package Aws::ElastiCache::CreateReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::DeleteCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::DeleteReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::DeleteSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::DescribeCacheClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheCluster]', traits => ['Unwrapped'], xmlname => 'CacheCluster');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheEngineVersion]', traits => ['Unwrapped'], xmlname => 'CacheEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheParameterGroup]', traits => ['Unwrapped'], xmlname => 'CacheParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]', traits => ['Unwrapped'], xmlname => 'CacheNodeTypeSpecificParameter');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::ElastiCache::DescribeCacheSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroup]', traits => ['Unwrapped'], xmlname => 'CacheSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSubnetGroup]', traits => ['Unwrapped'], xmlname => 'CacheSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::ElastiCache::EngineDefaults');

}
package Aws::ElastiCache::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeReplicationGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReplicationGroup]', traits => ['Unwrapped'], xmlname => 'ReplicationGroup');

}
package Aws::ElastiCache::DescribeReservedCacheNodesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNode]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNode');

}
package Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNodesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNodesOffering');

}
package Aws::ElastiCache::DescribeSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
package Aws::ElastiCache::ModifyCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::ModifyCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::ModifyCacheSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
package Aws::ElastiCache::ModifyReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedCacheNode => (is => 'ro', isa => 'Aws::ElastiCache::ReservedCacheNode');

}
package Aws::ElastiCache::RebootCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::ResetCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}

package Aws::ElastiCache {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2014-07-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AuthorizeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress', @_);
  }
  sub CopySnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CopySnapshot', @_);
  }
  sub CreateCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheCluster', @_);
  }
  sub CreateCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheParameterGroup', @_);
  }
  sub CreateCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheSecurityGroup', @_);
  }
  sub CreateCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheSubnetGroup', @_);
  }
  sub CreateReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateReplicationGroup', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateSnapshot', @_);
  }
  sub DeleteCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheCluster', @_);
  }
  sub DeleteCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheParameterGroup', @_);
  }
  sub DeleteCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheSecurityGroup', @_);
  }
  sub DeleteCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheSubnetGroup', @_);
  }
  sub DeleteReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteReplicationGroup', @_);
  }
  sub DeleteSnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteSnapshot', @_);
  }
  sub DescribeCacheClusters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheClusters', @_);
  }
  sub DescribeCacheEngineVersions {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheEngineVersions', @_);
  }
  sub DescribeCacheParameterGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheParameterGroups', @_);
  }
  sub DescribeCacheParameters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheParameters', @_);
  }
  sub DescribeCacheSecurityGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheSecurityGroups', @_);
  }
  sub DescribeCacheSubnetGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheSubnetGroups', @_);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeEngineDefaultParameters', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeEvents', @_);
  }
  sub DescribeReplicationGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReplicationGroups', @_);
  }
  sub DescribeReservedCacheNodes {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReservedCacheNodes', @_);
  }
  sub DescribeReservedCacheNodesOfferings {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReservedCacheNodesOfferings', @_);
  }
  sub DescribeSnapshots {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeSnapshots', @_);
  }
  sub ModifyCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheCluster', @_);
  }
  sub ModifyCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheParameterGroup', @_);
  }
  sub ModifyCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheSubnetGroup', @_);
  }
  sub ModifyReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyReplicationGroup', @_);
  }
  sub PurchaseReservedCacheNodesOffering {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::PurchaseReservedCacheNodesOffering', @_);
  }
  sub RebootCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::RebootCacheCluster', @_);
  }
  sub ResetCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ResetCacheParameterGroup', @_);
  }
  sub RevokeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::RevokeCacheSecurityGroupIngress', @_);
  }
}
1;
