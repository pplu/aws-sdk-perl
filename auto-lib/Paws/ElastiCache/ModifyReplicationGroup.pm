
package Paws::ElastiCache::ModifyReplicationGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyReplicationGroup - Arguments for method ModifyReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyReplicationGroupResult = $elasticache->ModifyReplicationGroup(
      ReplicationGroupId          => 'MyString',
      ApplyImmediately            => 1,                      # OPTIONAL
      AutoMinorVersionUpgrade     => 1,                      # OPTIONAL
      AutomaticFailoverEnabled    => 1,                      # OPTIONAL
      CacheNodeType               => 'MyString',             # OPTIONAL
      CacheParameterGroupName     => 'MyString',             # OPTIONAL
      CacheSecurityGroupNames     => [ 'MyString', ... ],    # OPTIONAL
      EngineVersion               => 'MyString',             # OPTIONAL
      NodeGroupId                 => 'MyString',             # OPTIONAL
      NotificationTopicArn        => 'MyString',             # OPTIONAL
      NotificationTopicStatus     => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow  => 'MyString',             # OPTIONAL
      PrimaryClusterId            => 'MyString',             # OPTIONAL
      ReplicationGroupDescription => 'MyString',             # OPTIONAL
      SecurityGroupIds            => [ 'MyString', ... ],    # OPTIONAL
      SnapshotRetentionLimit      => 1,                      # OPTIONAL
      SnapshotWindow              => 'MyString',             # OPTIONAL
      SnapshottingClusterId       => 'MyString',             # OPTIONAL
    );

    # Results:
    my $ReplicationGroup = $ModifyReplicationGroupResult->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::ModifyReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyReplicationGroup>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

If C<true>, this parameter causes the modifications in this request and
any pending modifications to be applied, asynchronously and as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the replication group.

If C<false>, changes to the nodes in the replication group are applied
on the next maintenance reboot, or the next failure reboot, whichever
occurs first.

Valid values: C<true> | C<false>

Default: C<false>



=head2 AutomaticFailoverEnabled => Bool

Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a failure.

Valid values: C<true> | C<false>

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



=head2 CacheNodeType => Str

A valid cache node type that you want to scale this replication group
to.



=head2 CacheParameterGroupName => Str

The name of the cache parameter group to apply to all of the clusters
in this replication group. This change is asynchronously applied as
soon as possible for parameters when the C<ApplyImmediately> parameter
is specified as C<true> for this request.



=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of cache security group names to authorize for the clusters in
this replication group. This change is asynchronously applied as soon
as possible.

This parameter can be used only with replication group containing
clusters running outside of an Amazon Virtual Private Cloud (Amazon
VPC).

Constraints: Must contain no more than 255 alphanumeric characters.
Must not be C<Default>.



=head2 EngineVersion => Str

The upgraded version of the cache engine to be run on the clusters in
the replication group.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement)),
but you cannot downgrade to an earlier engine version. If you want to
use an earlier engine version, you must delete the existing replication
group and create it anew with the earlier engine version.



=head2 NodeGroupId => Str

Deprecated. This parameter is not used.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications are sent.

The Amazon SNS topic owner must be same as the replication group owner.



=head2 NotificationTopicStatus => Str

The status of the Amazon SNS notification topic for the replication
group. Notifications are sent only if the status is C<active>.

Valid values: C<active> | C<inactive>



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



=head2 PrimaryClusterId => Str

For replication groups with a single primary, if this parameter is
specified, ElastiCache promotes the specified cluster in the specified
replication group to the primary role. The nodes of all other clusters
in the replication group are read replicas.



=head2 ReplicationGroupDescription => Str

A description for the replication group. Maximum length is 255
characters.



=head2 B<REQUIRED> ReplicationGroupId => Str

The identifier of the replication group to modify.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC Security Groups associated with the clusters in the
replication group.

This parameter can be used only with replication group containing
clusters running in an Amazon Virtual Private Cloud (Amazon VPC).



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic node group
(shard) snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

B<Important> If the value of SnapshotRetentionLimit is set to zero (0),
backups are turned off.



=head2 SnapshottingClusterId => Str

The cluster ID that is used as the daily snapshot source for the
replication group. This parameter cannot be set for Redis (cluster mode
enabled) replication groups.



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of the node group (shard) specified by
C<SnapshottingClusterId>.

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

