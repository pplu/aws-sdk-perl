
use Paws::API;


package Paws::ElastiCache {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2014-09-30');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AuthorizeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress', @_);
  }
  sub CopySnapshot {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CopySnapshot', @_);
  }
  sub CreateCacheCluster {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateCacheCluster', @_);
  }
  sub CreateCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateCacheParameterGroup', @_);
  }
  sub CreateCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateCacheSecurityGroup', @_);
  }
  sub CreateCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateCacheSubnetGroup', @_);
  }
  sub CreateReplicationGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateReplicationGroup', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::CreateSnapshot', @_);
  }
  sub DeleteCacheCluster {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteCacheCluster', @_);
  }
  sub DeleteCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteCacheParameterGroup', @_);
  }
  sub DeleteCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteCacheSecurityGroup', @_);
  }
  sub DeleteCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteCacheSubnetGroup', @_);
  }
  sub DeleteReplicationGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteReplicationGroup', @_);
  }
  sub DeleteSnapshot {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DeleteSnapshot', @_);
  }
  sub DescribeCacheClusters {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheClusters', @_);
  }
  sub DescribeCacheEngineVersions {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheEngineVersions', @_);
  }
  sub DescribeCacheParameterGroups {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheParameterGroups', @_);
  }
  sub DescribeCacheParameters {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheParameters', @_);
  }
  sub DescribeCacheSecurityGroups {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheSecurityGroups', @_);
  }
  sub DescribeCacheSubnetGroups {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeCacheSubnetGroups', @_);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeEngineDefaultParameters', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeEvents', @_);
  }
  sub DescribeReplicationGroups {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeReplicationGroups', @_);
  }
  sub DescribeReservedCacheNodes {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeReservedCacheNodes', @_);
  }
  sub DescribeReservedCacheNodesOfferings {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeReservedCacheNodesOfferings', @_);
  }
  sub DescribeSnapshots {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::DescribeSnapshots', @_);
  }
  sub ModifyCacheCluster {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::ModifyCacheCluster', @_);
  }
  sub ModifyCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::ModifyCacheParameterGroup', @_);
  }
  sub ModifyCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::ModifyCacheSubnetGroup', @_);
  }
  sub ModifyReplicationGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::ModifyReplicationGroup', @_);
  }
  sub PurchaseReservedCacheNodesOffering {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::PurchaseReservedCacheNodesOffering', @_);
  }
  sub RebootCacheCluster {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::RebootCacheCluster', @_);
  }
  sub ResetCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::ResetCacheParameterGroup', @_);
  }
  sub RevokeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Paws::ElastiCache::RevokeCacheSecurityGroupIngress', @_);
  }
}
1;