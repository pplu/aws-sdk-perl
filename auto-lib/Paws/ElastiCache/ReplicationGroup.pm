package Paws::ElastiCache::ReplicationGroup;
  use Moose;
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has AuthTokenEnabled => (is => 'ro', isa => 'Bool');
  has AutomaticFailover => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has ClusterEnabled => (is => 'ro', isa => 'Bool');
  has ConfigurationEndpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ClusterId', traits => ['NameInRequest']);
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroup]', request_name => 'NodeGroup', traits => ['NameInRequest']);
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReplicationGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReplicationGroup object:

  $service_obj->Method(Att1 => { AtRestEncryptionEnabled => $value, ..., TransitEncryptionEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReplicationGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AtRestEncryptionEnabled

=head1 DESCRIPTION

Contains all of the attributes of a specific Redis replication group.

=head1 ATTRIBUTES


=head2 AtRestEncryptionEnabled => Bool

  A flag that enables encryption at-rest when set to C<true>.

You cannot modify the value of C<AtRestEncryptionEnabled> after the
cluster is created. To enable encryption at-rest on a cluster you must
set C<AtRestEncryptionEnabled> to C<true> when you create a cluster.

B<Required:> Only available when creating a replication group in an
Amazon VPC using redis version C<3.2.6> or C<4.x>.

Default: C<false>


=head2 AuthTokenEnabled => Bool

  A flag that enables using an C<AuthToken> (password) when issuing Redis
commands.

Default: C<false>


=head2 AutomaticFailover => Str

  Indicates the status of Multi-AZ with automatic failover for this Redis
replication group.

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



=head2 CacheNodeType => Str

  The name of the compute and memory capacity node type for each node in
the replication group.


=head2 ClusterEnabled => Bool

  A flag indicating whether or not this replication group is cluster
enabled; i.e., whether its data can be partitioned across multiple
shards (API/CLI: node groups).

Valid values: C<true> | C<false>


=head2 ConfigurationEndpoint => L<Paws::ElastiCache::Endpoint>

  The configuration endpoint for this replication group. Use the
configuration endpoint to connect to this replication group.


=head2 Description => Str

  The user supplied description of the replication group.


=head2 MemberClusters => ArrayRef[Str|Undef]

  The names of all the cache clusters that are part of this replication
group.


=head2 NodeGroups => ArrayRef[L<Paws::ElastiCache::NodeGroup>]

  A list of node groups in this replication group. For Redis (cluster
mode disabled) replication groups, this is a single-element list. For
Redis (cluster mode enabled) replication groups, the list contains an
entry for each node group (shard).


=head2 PendingModifiedValues => L<Paws::ElastiCache::ReplicationGroupPendingModifiedValues>

  A group of settings to be applied to the replication group, either
immediately or during the next maintenance window.


=head2 ReplicationGroupId => Str

  The identifier for the replication group.


=head2 SnapshotRetentionLimit => Int

  The number of days for which ElastiCache retains automatic cluster
snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

If the value of C<SnapshotRetentionLimit> is set to zero (0), backups
are turned off.


=head2 SnapshottingClusterId => Str

  The cluster ID that is used as the daily snapshot source for the
replication group.


=head2 SnapshotWindow => Str

  The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your node group (shard).

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.

This parameter is only valid if the C<Engine> parameter is C<redis>.


=head2 Status => Str

  The current state of this replication group - C<creating>,
C<available>, C<modifying>, C<deleting>, C<create-failed>,
C<snapshotting>.


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

