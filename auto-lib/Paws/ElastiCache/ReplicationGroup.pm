package Paws::ElastiCache::ReplicationGroup;
  use Moose;
  has AutomaticFailover => (is => 'ro', isa => 'Str');
  has ConfigurationEndpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { AutomaticFailover => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReplicationGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomaticFailover

=head1 DESCRIPTION

Contains all of the attributes of a specific Redis replication group.

=head1 ATTRIBUTES


=head2 AutomaticFailover => Str

  Indicates the status of Multi-AZ for this replication group.

ElastiCache Multi-AZ replication groups are not supported on:

=over

=item *

Redis versions earlier than 2.8.6.

=item *

Redis (cluster mode disabled):T1 and T2 cache node types.

Redis (cluster mode enabled): T1 node types.

=back



=head2 ConfigurationEndpoint => L<Paws::ElastiCache::Endpoint>

  The configuration endpoint for this replicaiton group. Use the
configuration endpoint to connect to this replication group.


=head2 Description => Str

  The description of the replication group.


=head2 MemberClusters => ArrayRef[Str|Undef]

  The names of all the cache clusters that are part of this replication
group.


=head2 NodeGroups => ArrayRef[L<Paws::ElastiCache::NodeGroup>]

  A single element list with information about the nodes in the
replication group.


=head2 PendingModifiedValues => L<Paws::ElastiCache::ReplicationGroupPendingModifiedValues>

  A group of settings to be applied to the replication group, either
immediately or during the next maintenance window.


=head2 ReplicationGroupId => Str

  The identifier for the replication group.


=head2 SnapshotRetentionLimit => Int

  The number of days for which ElastiCache retains automatic cache
cluster snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

If the value of C<SnapshotRetentionLimit> is set to zero (0), backups
are turned off.


=head2 SnapshottingClusterId => Str

  The cache cluster ID that is used as the daily snapshot source for the
replication group.


=head2 SnapshotWindow => Str

  The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your node group (shard).

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.

B<Note:> This parameter is only valid if the C<Engine> parameter is
C<redis>.


=head2 Status => Str

  The current state of this replication group - C<creating>,
C<available>, etc.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

