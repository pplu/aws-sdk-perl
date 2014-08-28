
use AWS::API;


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