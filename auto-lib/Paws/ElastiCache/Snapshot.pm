package Paws::ElastiCache::Snapshot;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NodeSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeSnapshot]');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
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

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::Snapshot object:

  $service_obj->Method(Att1 => { AutoMinorVersionUpgrade => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::Snapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMinorVersionUpgrade

=head1 ATTRIBUTES

=head2 AutoMinorVersionUpgrade => Bool

  This parameter is currently disabled.

=head2 CacheClusterCreateTime => Str

  The date and time when the source cache cluster was created.

=head2 CacheClusterId => Str

  The user-supplied identifier of the source cache cluster.

=head2 CacheNodeType => Str

  The name of the compute and memory capacity node type for the source
cache cluster.

Valid node types are as follows:

=over

=item * General purpose:

=over

=item * Current generation: C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>, C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

=item * Previous generation: C<cache.t1.micro>, C<cache.m1.small>,
C<cache.m1.medium>, C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item * Compute optimized: C<cache.c1.xlarge>

=item * Memory optimized

=over

=item * Current generation: C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=item * Previous generation: C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item * All t2 instances are created in an Amazon Virtual Private Cloud
(VPC).

=item * Redis backup/restore is not supported for t2 instances.

=item * Redis Append-only files (AOF) functionality is not supported
for t1 or t2 instances.

=back

For a complete listing of cache node types and specifications, see
Amazon ElastiCache Product Features and Details and Cache Node
Type-Specific Parameters for Memcached or Cache Node Type-Specific
Parameters for Redis.

=head2 CacheParameterGroupName => Str

  The cache parameter group that is associated with the source cache
cluster.

=head2 CacheSubnetGroupName => Str

  The name of the cache subnet group associated with the source cache
cluster.

=head2 Engine => Str

  The name of the cache engine (I<memcached> or I<redis>) used by the
source cache cluster.

=head2 EngineVersion => Str

  The version of the cache engine version that is used by the source
cache cluster.

=head2 NodeSnapshots => ArrayRef[L<Paws::ElastiCache::NodeSnapshot>]

  A list of the cache nodes in the source cache cluster.

=head2 NumCacheNodes => Int

  The number of cache nodes in the source cache cluster.

For clusters running Redis, this value must be 1. For clusters running
Memcached, this value must be between 1 and 20.

=head2 Port => Int

  The port number used by each cache nodes in the source cache cluster.

=head2 PreferredAvailabilityZone => Str

  The name of the Availability Zone in which the source cache cluster is
located.

=head2 PreferredMaintenanceWindow => Str

  Specifies the weekly time range during which maintenance on the cache
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period. Valid values for C<ddd> are:

=over

=item * C<sun>

=item * C<mon>

=item * C<tue>

=item * C<wed>

=item * C<thu>

=item * C<fri>

=item * C<sat>

=back

Example: C<sun:05:00-sun:09:00>

=head2 SnapshotName => Str

  The name of a snapshot. For an automatic snapshot, the name is
system-generated; for a manual snapshot, this is the user-provided
name.

=head2 SnapshotRetentionLimit => Int

  For an automatic snapshot, the number of days for which ElastiCache
will retain the snapshot before deleting it.

For manual snapshots, this field reflects the I<SnapshotRetentionLimit>
for the source cache cluster when the snapshot was created. This field
is otherwise ignored: Manual snapshots do not expire, and can only be
deleted using the I<DeleteSnapshot> action.

B<Important>

If the value of SnapshotRetentionLimit is set to zero (0), backups are
turned off.

=head2 SnapshotSource => Str

  Indicates whether the snapshot is from an automatic backup
(C<automated>) or was created manually (C<manual>).

=head2 SnapshotStatus => Str

  The status of the snapshot. Valid values: C<creating> | C<available> |
C<restoring> | C<copying> | C<deleting>.

=head2 SnapshotWindow => Str

  The daily time range during which ElastiCache takes daily snapshots of
the source cache cluster.

=head2 TopicArn => Str

  The Amazon Resource Name (ARN) for the topic used by the source cache
cluster for publishing notifications.

=head2 VpcId => Str

  The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
subnet group for the source cache cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

