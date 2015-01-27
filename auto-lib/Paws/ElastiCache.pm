
use Paws::API;


package Paws::ElastiCache {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2014-09-30');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  with 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
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

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache - Perl Interface to AWS Amazon ElastiCache

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon ElastiCache

Amazon ElastiCache is a web service that makes it easier to set up,
operate, and scale a distributed cache in the cloud.

With ElastiCache, customers gain all of the benefits of a
high-performance, in-memory cache with far less of the administrative
burden of launching and managing a distributed cache. The service makes
setup, scaling, and cluster failure handling much simpler than in a
self-managed cache deployment.

In addition, through integration with Amazon CloudWatch, customers get
enhanced visibility into the key performance statistics associated with
their cache and can receive alarms if a part of their cache runs hot.










=head1 METHODS

=head2 AuthorizeCacheSecurityGroupIngress()

  Arguments described in: L<Paws::ElastiCache::AuthorizeCacheSecurityGroupIngress>

  Returns: L<Paws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult>

  

The I<AuthorizeCacheSecurityGroupIngress> operation allows network
ingress to a cache security group. Applications using ElastiCache must
be running on Amazon EC2, and Amazon EC2 security groups are used as
the authorization mechanism.











=head2 CopySnapshot()

  Arguments described in: L<Paws::ElastiCache::CopySnapshot>

  Returns: L<Paws::ElastiCache::CopySnapshotResult>

  

The I<CopySnapshot> operation makes a copy of an existing snapshot.











=head2 CreateCacheCluster()

  Arguments described in: L<Paws::ElastiCache::CreateCacheCluster>

  Returns: L<Paws::ElastiCache::CreateCacheClusterResult>

  

The I<CreateCacheCluster> operation creates a cache cluster. All nodes
in the cache cluster run the same protocol-compliant cache engine
software, either Memcached or Redis.











=head2 CreateCacheParameterGroup()

  Arguments described in: L<Paws::ElastiCache::CreateCacheParameterGroup>

  Returns: L<Paws::ElastiCache::CreateCacheParameterGroupResult>

  

The I<CreateCacheParameterGroup> operation creates a new cache
parameter group. A cache parameter group is a collection of parameters
that you apply to all of the nodes in a cache cluster.











=head2 CreateCacheSecurityGroup()

  Arguments described in: L<Paws::ElastiCache::CreateCacheSecurityGroup>

  Returns: L<Paws::ElastiCache::CreateCacheSecurityGroupResult>

  

The I<CreateCacheSecurityGroup> operation creates a new cache security
group. Use a cache security group to control access to one or more
cache clusters.

Cache security groups are only used when you are creating a cache
cluster outside of an Amazon Virtual Private Cloud (VPC). If you are
creating a cache cluster inside of a VPC, use a cache subnet group
instead. For more information, see CreateCacheSubnetGroup.











=head2 CreateCacheSubnetGroup()

  Arguments described in: L<Paws::ElastiCache::CreateCacheSubnetGroup>

  Returns: L<Paws::ElastiCache::CreateCacheSubnetGroupResult>

  

The I<CreateCacheSubnetGroup> operation creates a new cache subnet
group.

Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (VPC).











=head2 CreateReplicationGroup()

  Arguments described in: L<Paws::ElastiCache::CreateReplicationGroup>

  Returns: L<Paws::ElastiCache::CreateReplicationGroupResult>

  

The I<CreateReplicationGroup> operation creates a replication group. A
replication group is a collection of cache clusters, where one of the
cache clusters is a read/write primary and the others are read-only
replicas. Writes to the primary are automatically propagated to the
replicas.

When you create a replication group, you must specify an existing cache
cluster that is in the primary role. When the replication group has
been successfully created, you can add one or more read replica
replicas to it, up to a total of five read replicas.

B<Note:> This action is valid only for Redis.











=head2 CreateSnapshot()

  Arguments described in: L<Paws::ElastiCache::CreateSnapshot>

  Returns: L<Paws::ElastiCache::CreateSnapshotResult>

  

The I<CreateSnapshot> operation creates a copy of an entire cache
cluster at a specific moment in time.











=head2 DeleteCacheCluster()

  Arguments described in: L<Paws::ElastiCache::DeleteCacheCluster>

  Returns: L<Paws::ElastiCache::DeleteCacheClusterResult>

  

The I<DeleteCacheCluster> operation deletes a previously provisioned
cache cluster. I<DeleteCacheCluster> deletes all associated cache
nodes, node endpoints and the cache cluster itself. When you receive a
successful response from this operation, Amazon ElastiCache immediately
begins deleting the cache cluster; you cannot cancel or revert this
operation.

This API cannot be used to delete a cache cluster that is the last read
replica of a replication group that has automatic failover mode
enabled.











=head2 DeleteCacheParameterGroup()

  Arguments described in: L<Paws::ElastiCache::DeleteCacheParameterGroup>

  Returns: nothing

  

The I<DeleteCacheParameterGroup> operation deletes the specified cache
parameter group. You cannot delete a cache parameter group if it is
associated with any cache clusters.











=head2 DeleteCacheSecurityGroup()

  Arguments described in: L<Paws::ElastiCache::DeleteCacheSecurityGroup>

  Returns: nothing

  

The I<DeleteCacheSecurityGroup> operation deletes a cache security
group.











=head2 DeleteCacheSubnetGroup()

  Arguments described in: L<Paws::ElastiCache::DeleteCacheSubnetGroup>

  Returns: nothing

  

The I<DeleteCacheSubnetGroup> operation deletes a cache subnet group.











=head2 DeleteReplicationGroup()

  Arguments described in: L<Paws::ElastiCache::DeleteReplicationGroup>

  Returns: L<Paws::ElastiCache::DeleteReplicationGroupResult>

  

The I<DeleteReplicationGroup> operation deletes an existing cluster. By
default, this operation deletes the entire cluster, including the
primary node group and all of the read replicas. You can optionally
delete only the read replicas, while retaining the primary node group.

When you receive a successful response from this operation, Amazon
ElastiCache immediately begins deleting the selected resources; you
cannot cancel or revert this operation.











=head2 DeleteSnapshot()

  Arguments described in: L<Paws::ElastiCache::DeleteSnapshot>

  Returns: L<Paws::ElastiCache::DeleteSnapshotResult>

  

The I<DeleteSnapshot> operation deletes an existing snapshot. When you
receive a successful response from this operation, ElastiCache
immediately begins deleting the snapshot; you cannot cancel or revert
this operation.











=head2 DescribeCacheClusters()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheClusters>

  Returns: L<Paws::ElastiCache::CacheClusterMessage>

  

The I<DescribeCacheClusters> operation returns information about all
provisioned cache clusters if no cache cluster identifier is specified,
or about a specific cache cluster if a cache cluster identifier is
supplied.

By default, abbreviated information about the cache clusters(s) will be
returned. You can use the optional I<ShowDetails> flag to retrieve
detailed information about the cache nodes associated with the cache
clusters. These details include the DNS address and port for the cache
node endpoint.

If the cluster is in the CREATING state, only cluster level information
will be displayed until all of the nodes are successfully provisioned.

If the cluster is in the DELETING state, only cluster level information
will be displayed.

If cache nodes are currently being added to the cache cluster, node
endpoint information and creation time for the additional nodes will
not be displayed until they are completely provisioned. When the cache
cluster state is I<available>, the cluster is ready for use.

If cache nodes are currently being removed from the cache cluster, no
endpoint information for the removed nodes is displayed.











=head2 DescribeCacheEngineVersions()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheEngineVersions>

  Returns: L<Paws::ElastiCache::CacheEngineVersionMessage>

  

The I<DescribeCacheEngineVersions> operation returns a list of the
available cache engines and their versions.











=head2 DescribeCacheParameterGroups()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheParameterGroups>

  Returns: L<Paws::ElastiCache::CacheParameterGroupsMessage>

  

The I<DescribeCacheParameterGroups> operation returns a list of cache
parameter group descriptions. If a cache parameter group name is
specified, the list will contain only the descriptions for that group.











=head2 DescribeCacheParameters()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheParameters>

  Returns: L<Paws::ElastiCache::CacheParameterGroupDetails>

  

The I<DescribeCacheParameters> operation returns the detailed parameter
list for a particular cache parameter group.











=head2 DescribeCacheSecurityGroups()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheSecurityGroups>

  Returns: L<Paws::ElastiCache::CacheSecurityGroupMessage>

  

The I<DescribeCacheSecurityGroups> operation returns a list of cache
security group descriptions. If a cache security group name is
specified, the list will contain only the description of that group.











=head2 DescribeCacheSubnetGroups()

  Arguments described in: L<Paws::ElastiCache::DescribeCacheSubnetGroups>

  Returns: L<Paws::ElastiCache::CacheSubnetGroupMessage>

  

The I<DescribeCacheSubnetGroups> operation returns a list of cache
subnet group descriptions. If a subnet group name is specified, the
list will contain only the description of that group.











=head2 DescribeEngineDefaultParameters()

  Arguments described in: L<Paws::ElastiCache::DescribeEngineDefaultParameters>

  Returns: L<Paws::ElastiCache::DescribeEngineDefaultParametersResult>

  

The I<DescribeEngineDefaultParameters> operation returns the default
engine and system parameter information for the specified cache engine.











=head2 DescribeEvents()

  Arguments described in: L<Paws::ElastiCache::DescribeEvents>

  Returns: L<Paws::ElastiCache::EventsMessage>

  

The I<DescribeEvents> operation returns events related to cache
clusters, cache security groups, and cache parameter groups. You can
obtain events specific to a particular cache cluster, cache security
group, or cache parameter group by providing the name as a parameter.

By default, only the events occurring within the last hour are
returned; however, you can retrieve up to 14 days' worth of events if
necessary.











=head2 DescribeReplicationGroups()

  Arguments described in: L<Paws::ElastiCache::DescribeReplicationGroups>

  Returns: L<Paws::ElastiCache::ReplicationGroupMessage>

  

The I<DescribeReplicationGroups> operation returns information about a
particular replication group. If no identifier is specified,
I<DescribeReplicationGroups> returns information about all replication
groups.











=head2 DescribeReservedCacheNodes()

  Arguments described in: L<Paws::ElastiCache::DescribeReservedCacheNodes>

  Returns: L<Paws::ElastiCache::ReservedCacheNodeMessage>

  

The I<DescribeReservedCacheNodes> operation returns information about
reserved cache nodes for this account, or about a specified reserved
cache node.











=head2 DescribeReservedCacheNodesOfferings()

  Arguments described in: L<Paws::ElastiCache::DescribeReservedCacheNodesOfferings>

  Returns: L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage>

  

The I<DescribeReservedCacheNodesOfferings> operation lists available
reserved cache node offerings.











=head2 DescribeSnapshots()

  Arguments described in: L<Paws::ElastiCache::DescribeSnapshots>

  Returns: L<Paws::ElastiCache::DescribeSnapshotsListMessage>

  

The I<DescribeSnapshots> operation returns information about cache
cluster snapshots. By default, I<DescribeSnapshots> lists all of your
snapshots; it can optionally describe a single snapshot, or just the
snapshots associated with a particular cache cluster.











=head2 ModifyCacheCluster()

  Arguments described in: L<Paws::ElastiCache::ModifyCacheCluster>

  Returns: L<Paws::ElastiCache::ModifyCacheClusterResult>

  

The I<ModifyCacheCluster> operation modifies the settings for a cache
cluster. You can use this operation to change one or more cluster
configuration parameters by specifying the parameters and the new
values.











=head2 ModifyCacheParameterGroup()

  Arguments described in: L<Paws::ElastiCache::ModifyCacheParameterGroup>

  Returns: L<Paws::ElastiCache::CacheParameterGroupNameMessage>

  

The I<ModifyCacheParameterGroup> operation modifies the parameters of a
cache parameter group. You can modify up to 20 parameters in a single
request by submitting a list parameter name and value pairs.











=head2 ModifyCacheSubnetGroup()

  Arguments described in: L<Paws::ElastiCache::ModifyCacheSubnetGroup>

  Returns: L<Paws::ElastiCache::ModifyCacheSubnetGroupResult>

  

The I<ModifyCacheSubnetGroup> operation modifies an existing cache
subnet group.











=head2 ModifyReplicationGroup()

  Arguments described in: L<Paws::ElastiCache::ModifyReplicationGroup>

  Returns: L<Paws::ElastiCache::ModifyReplicationGroupResult>

  

The I<ModifyReplicationGroup> operation modifies the settings for a
replication group.











=head2 PurchaseReservedCacheNodesOffering()

  Arguments described in: L<Paws::ElastiCache::PurchaseReservedCacheNodesOffering>

  Returns: L<Paws::ElastiCache::PurchaseReservedCacheNodesOfferingResult>

  

The I<PurchaseReservedCacheNodesOffering> operation allows you to
purchase a reserved cache node offering.











=head2 RebootCacheCluster()

  Arguments described in: L<Paws::ElastiCache::RebootCacheCluster>

  Returns: L<Paws::ElastiCache::RebootCacheClusterResult>

  

The I<RebootCacheCluster> operation reboots some, or all, of the cache
nodes within a provisioned cache cluster. This API will apply any
modified cache parameter groups to the cache cluster. The reboot action
takes place as soon as possible, and results in a momentary outage to
the cache cluster. During the reboot, the cache cluster status is set
to REBOOTING.

The reboot causes the contents of the cache (for each cache node being
rebooted) to be lost.

When the reboot is complete, a cache cluster event is created.











=head2 ResetCacheParameterGroup()

  Arguments described in: L<Paws::ElastiCache::ResetCacheParameterGroup>

  Returns: L<Paws::ElastiCache::CacheParameterGroupNameMessage>

  

The I<ResetCacheParameterGroup> operation modifies the parameters of a
cache parameter group to the engine or system default value. You can
reset specific parameters by submitting a list of parameter names. To
reset the entire cache parameter group, specify the
I<ResetAllParameters> and I<CacheParameterGroupName> parameters.











=head2 RevokeCacheSecurityGroupIngress()

  Arguments described in: L<Paws::ElastiCache::RevokeCacheSecurityGroupIngress>

  Returns: L<Paws::ElastiCache::RevokeCacheSecurityGroupIngressResult>

  

The I<RevokeCacheSecurityGroupIngress> operation revokes ingress from a
cache security group. Use this operation to disallow access from an
Amazon EC2 security group that had been previously authorized.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

