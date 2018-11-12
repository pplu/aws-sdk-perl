package Paws::ElastiCache::Snapshot;
  use Moose;
  has AutomaticFailover => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NodeSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeSnapshot]', request_name => 'NodeSnapshot', traits => ['NameInRequest']);
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has NumNodeGroups => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotSource => (is => 'ro', isa => 'Str');
  has SnapshotStatus => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::Snapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::Snapshot object:

  $service_obj->Method(Att1 => { AutomaticFailover => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::Snapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomaticFailover

=head1 DESCRIPTION

Represents a copy of an entire Redis cluster as of the time when the
snapshot was taken.

=head1 ATTRIBUTES


=head2 AutomaticFailover => Str

  Indicates the status of Multi-AZ with automatic failover for the source
Redis replication group.

Amazon ElastiCache for Redis does not support Multi-AZ with automatic
failover on:

=over

=item *

Redis versions earlier than 2.8.6.

=item *

Redis (cluster mode disabled): T1 and T2 cache node types.

=item *

Redis (cluster mode enabled): T1 node types.

=back



=head2 AutoMinorVersionUpgrade => Bool

  This parameter is currently disabled.


=head2 CacheClusterCreateTime => Str

  The date and time when the source cluster was created.


=head2 CacheClusterId => Str

  The user-supplied identifier of the source cluster.


=head2 CacheNodeType => Str

  The name of the compute and memory capacity node type for the source
cluster.

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

=item *

Previous generation: (not recommended)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

B<R4 node types;> C<cache.r4.large>, C<cache.r4.xlarge>,
C<cache.r4.2xlarge>, C<cache.r4.4xlarge>, C<cache.r4.8xlarge>,
C<cache.r4.16xlarge>

=item *

Previous generation: (not recommended)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item *

All T2 instances are created in an Amazon Virtual Private Cloud (Amazon
VPC).

=item *

Redis (cluster mode disabled): Redis backup/restore is not supported on
T1 and T2 instances.

=item *

Redis (cluster mode enabled): Backup/restore is not supported on T1
instances.

=item *

Redis Append-only files (AOF) functionality is not supported for T1 or
T2 instances.

=back

For a complete listing of node types and specifications, see:

=over

=item *

Amazon ElastiCache Product Features and Details
(http://aws.amazon.com/elasticache/details)

=item *

Cache Node Type-Specific Parameters for Memcached
(http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific)

=item *

Cache Node Type-Specific Parameters for Redis
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific)

=back



=head2 CacheParameterGroupName => Str

  The cache parameter group that is associated with the source cluster.


=head2 CacheSubnetGroupName => Str

  The name of the cache subnet group associated with the source cluster.


=head2 Engine => Str

  The name of the cache engine (C<memcached> or C<redis>) used by the
source cluster.


=head2 EngineVersion => Str

  The version of the cache engine version that is used by the source
cluster.


=head2 NodeSnapshots => ArrayRef[L<Paws::ElastiCache::NodeSnapshot>]

  A list of the cache nodes in the source cluster.


=head2 NumCacheNodes => Int

  The number of cache nodes in the source cluster.

For clusters running Redis, this value must be 1. For clusters running
Memcached, this value must be between 1 and 20.


=head2 NumNodeGroups => Int

  The number of node groups (shards) in this snapshot. When restoring
from a snapshot, the number of node groups (shards) in the snapshot and
in the restored replication group must be the same.


=head2 Port => Int

  The port number used by each cache nodes in the source cluster.


=head2 PreferredAvailabilityZone => Str

  The name of the Availability Zone in which the source cluster is
located.


=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which maintenance on the cluster
is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.

Valid values for C<ddd> are:

=over

=item *

C<sun>

=item *

C<mon>

=item *

C<tue>

=item *

C<wed>

=item *

C<thu>

=item *

C<fri>

=item *

C<sat>

=back

Example: C<sun:23:00-mon:01:30>


=head2 ReplicationGroupDescription => Str

  A description of the source replication group.


=head2 ReplicationGroupId => Str

  The unique identifier of the source replication group.


=head2 SnapshotName => Str

  The name of a snapshot. For an automatic snapshot, the name is
system-generated. For a manual snapshot, this is the user-provided
name.


=head2 SnapshotRetentionLimit => Int

  For an automatic snapshot, the number of days for which ElastiCache
retains the snapshot before deleting it.

For manual snapshots, this field reflects the C<SnapshotRetentionLimit>
for the source cluster when the snapshot was created. This field is
otherwise ignored: Manual snapshots do not expire, and can only be
deleted using the C<DeleteSnapshot> operation.

B<Important> If the value of SnapshotRetentionLimit is set to zero (0),
backups are turned off.


=head2 SnapshotSource => Str

  Indicates whether the snapshot is from an automatic backup
(C<automated>) or was created manually (C<manual>).


=head2 SnapshotStatus => Str

  The status of the snapshot. Valid values: C<creating> | C<available> |
C<restoring> | C<copying> | C<deleting>.


=head2 SnapshotWindow => Str

  The daily time range during which ElastiCache takes daily snapshots of
the source cluster.


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) for the topic used by the source cluster
for publishing notifications.


=head2 VpcId => Str

  The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
subnet group for the source cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

