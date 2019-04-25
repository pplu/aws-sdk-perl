package Paws::ElastiCache::CacheCluster;
  use Moose;
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has AuthTokenEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has CacheNodes => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheNode]', request_name => 'CacheNode', traits => ['NameInRequest']);
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroup => (is => 'ro', isa => 'Paws::ElastiCache::CacheParameterGroupStatus');
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CacheSecurityGroupMembership]', request_name => 'CacheSecurityGroup', traits => ['NameInRequest']);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClientDownloadLandingPage => (is => 'ro', isa => 'Str');
  has ConfigurationEndpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::ElastiCache::NotificationConfiguration');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::ElastiCache::PendingModifiedValues');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::SecurityGroupMembership]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheCluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheCluster object:

  $service_obj->Method(Att1 => { AtRestEncryptionEnabled => $value, ..., TransitEncryptionEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheCluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AtRestEncryptionEnabled

=head1 DESCRIPTION

Contains all of the attributes of a specific cluster.

=head1 ATTRIBUTES


=head2 AtRestEncryptionEnabled => Bool

  A flag that enables encryption at-rest when set to C<true>.

You cannot modify the value of C<AtRestEncryptionEnabled> after the
cluster is created. To enable at-rest encryption on a cluster you must
set C<AtRestEncryptionEnabled> to C<true> when you create a cluster.

B<Required:> Only available when creating a replication group in an
Amazon VPC using redis version C<3.2.6> or C<4.x>.

Default: C<false>


=head2 AuthTokenEnabled => Bool

  A flag that enables using an C<AuthToken> (password) when issuing Redis
commands.

Default: C<false>


=head2 AutoMinorVersionUpgrade => Bool

  This parameter is currently disabled.


=head2 CacheClusterCreateTime => Str

  The date and time when the cluster was created.


=head2 CacheClusterId => Str

  The user-supplied identifier of the cluster. This identifier is a
unique key that identifies a cluster.


=head2 CacheClusterStatus => Str

  The current state of this cluster, one of the following values:
C<available>, C<creating>, C<deleted>, C<deleting>,
C<incompatible-network>, C<modifying>, C<rebooting cluster nodes>,
C<restore-failed>, or C<snapshotting>.


=head2 CacheNodes => ArrayRef[L<Paws::ElastiCache::CacheNode>]

  A list of cache nodes that are members of the cluster.


=head2 CacheNodeType => Str

  The name of the compute and memory capacity node type for the cluster.

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



=head2 CacheParameterGroup => L<Paws::ElastiCache::CacheParameterGroupStatus>

  Status of the cache parameter group.


=head2 CacheSecurityGroups => ArrayRef[L<Paws::ElastiCache::CacheSecurityGroupMembership>]

  A list of cache security group elements, composed of name and status
sub-elements.


=head2 CacheSubnetGroupName => Str

  The name of the cache subnet group associated with the cluster.


=head2 ClientDownloadLandingPage => Str

  The URL of the web page where you can download the latest ElastiCache
client library.


=head2 ConfigurationEndpoint => L<Paws::ElastiCache::Endpoint>

  Represents a Memcached cluster endpoint which, if Automatic Discovery
is enabled on the cluster, can be used by an application to connect to
any node in the cluster. The configuration endpoint will always have
C<.cfg> in it.

Example: C<mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211>


=head2 Engine => Str

  The name of the cache engine (C<memcached> or C<redis>) to be used for
this cluster.


=head2 EngineVersion => Str

  The version of the cache engine that is used in this cluster.


=head2 NotificationConfiguration => L<Paws::ElastiCache::NotificationConfiguration>

  Describes a notification topic and its status. Notification topics are
used for publishing ElastiCache events to subscribers using Amazon
Simple Notification Service (SNS).


=head2 NumCacheNodes => Int

  The number of cache nodes in the cluster.

For clusters running Redis, this value must be 1. For clusters running
Memcached, this value must be between 1 and 20.


=head2 PendingModifiedValues => L<Paws::ElastiCache::PendingModifiedValues>

  


=head2 PreferredAvailabilityZone => Str

  The name of the Availability Zone in which the cluster is located or
"Multiple" if the cache nodes are located in different Availability
Zones.


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


=head2 ReplicationGroupId => Str

  The replication group to which this cluster belongs. If this field is
empty, the cluster is not associated with any replication group.


=head2 SecurityGroups => ArrayRef[L<Paws::ElastiCache::SecurityGroupMembership>]

  A list of VPC Security Groups associated with the cluster.


=head2 SnapshotRetentionLimit => Int

  The number of days for which ElastiCache retains automatic cluster
snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

If the value of SnapshotRetentionLimit is set to zero (0), backups are
turned off.


=head2 SnapshotWindow => Str

  The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your cluster.

Example: C<05:00-09:00>


=head2 TransitEncryptionEnabled => Bool

  A flag that enables in-transit encryption when set to C<true>.

You cannot modify the value of C<TransitEncryptionEnabled> after the
cluster is created. To enable in-transit encryption on a cluster you
must set C<TransitEncryptionEnabled> to C<true> when you create a
cluster.

B<Required:> Only available when creating a replication group in an
Amazon VPC using redis version C<3.2.6> or C<4.x>.

Default: C<false>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

