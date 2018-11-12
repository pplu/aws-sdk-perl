
package Paws::ElastiCache::ModifyCacheCluster;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AZMode => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NewAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyCacheCluster - Arguments for method ModifyCacheCluster on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCacheCluster on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyCacheCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCacheCluster.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyCacheClusterResult = $elasticache->ModifyCacheCluster(
      CacheClusterId             => 'MyString',
      AZMode                     => 'single-az',            # OPTIONAL
      ApplyImmediately           => 1,                      # OPTIONAL
      AutoMinorVersionUpgrade    => 1,                      # OPTIONAL
      CacheNodeIdsToRemove       => [ 'MyString', ... ],    # OPTIONAL
      CacheNodeType              => 'MyString',             # OPTIONAL
      CacheParameterGroupName    => 'MyString',             # OPTIONAL
      CacheSecurityGroupNames    => [ 'MyString', ... ],    # OPTIONAL
      EngineVersion              => 'MyString',             # OPTIONAL
      NewAvailabilityZones       => [ 'MyString', ... ],    # OPTIONAL
      NotificationTopicArn       => 'MyString',             # OPTIONAL
      NotificationTopicStatus    => 'MyString',             # OPTIONAL
      NumCacheNodes              => 1,                      # OPTIONAL
      PreferredMaintenanceWindow => 'MyString',             # OPTIONAL
      SecurityGroupIds           => [ 'MyString', ... ],    # OPTIONAL
      SnapshotRetentionLimit     => 1,                      # OPTIONAL
      SnapshotWindow             => 'MyString',             # OPTIONAL
    );

    # Results:
    my $CacheCluster = $ModifyCacheClusterResult->CacheCluster;

    # Returns a L<Paws::ElastiCache::ModifyCacheClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyCacheCluster>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

If C<true>, this parameter causes the modifications in this request and
any pending modifications to be applied, asynchronously and as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the cluster.

If C<false>, changes to the cluster are applied on the next maintenance
reboot, or the next failure reboot, whichever occurs first.

If you perform a C<ModifyCacheCluster> before a pending modification is
applied, the pending modification is replaced by the newer
modification.

Valid values: C<true> | C<false>

Default: C<false>



=head2 AutoMinorVersionUpgrade => Bool

This parameter is currently disabled.



=head2 AZMode => Str

Specifies whether the new nodes in this Memcached cluster are all
created in a single Availability Zone or created across multiple
Availability Zones.

Valid values: C<single-az> | C<cross-az>.

This option is only supported for Memcached clusters.

You cannot specify C<single-az> if the Memcached cluster already has
cache nodes in different Availability Zones. If C<cross-az> is
specified, existing Memcached nodes remain in their current
Availability Zone.

Only newly created nodes are located in different Availability Zones.
For instructions on how to move existing Memcached nodes to different
Availability Zones, see the B<Availability Zone Considerations> section
of Cache Node Considerations for Memcached
(http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html).

Valid values are: C<"single-az">, C<"cross-az">

=head2 B<REQUIRED> CacheClusterId => Str

The cluster identifier. This value is stored as a lowercase string.



=head2 CacheNodeIdsToRemove => ArrayRef[Str|Undef]

A list of cache node IDs to be removed. A node ID is a numeric
identifier (0001, 0002, etc.). This parameter is only valid when
C<NumCacheNodes> is less than the existing number of cache nodes. The
number of cache node IDs supplied in this parameter must match the
difference between the existing number of cache nodes in the cluster or
pending cache nodes, whichever is greater, and the value of
C<NumCacheNodes> in the request.

For example: If you have 3 active cache nodes, 7 pending cache nodes,
and the number of cache nodes in this C<ModifyCacheCluster> call is 5,
you must list 2 (7 - 5) cache node IDs to remove.



=head2 CacheNodeType => Str

A valid cache node type that you want to scale this cluster up to.



=head2 CacheParameterGroupName => Str

The name of the cache parameter group to apply to this cluster. This
change is asynchronously applied as soon as possible for parameters
when the C<ApplyImmediately> parameter is specified as C<true> for this
request.



=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of cache security group names to authorize on this cluster. This
change is asynchronously applied as soon as possible.

You can use this parameter only with clusters that are created outside
of an Amazon Virtual Private Cloud (Amazon VPC).

Constraints: Must contain no more than 255 alphanumeric characters.
Must not be "Default".



=head2 EngineVersion => Str

The upgraded version of the cache engine to be run on the cache nodes.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement)),
but you cannot downgrade to an earlier engine version. If you want to
use an earlier engine version, you must delete the existing cluster and
create it anew with the earlier engine version.



=head2 NewAvailabilityZones => ArrayRef[Str|Undef]

The list of Availability Zones where the new Memcached cache nodes are
created.

This parameter is only valid when C<NumCacheNodes> in the request is
greater than the sum of the number of active cache nodes and the number
of cache nodes pending creation (which may be zero). The number of
Availability Zones supplied in this list must match the cache nodes
being added in this request.

This option is only supported on Memcached clusters.

Scenarios:

=over

=item *

B<Scenario 1:> You have 3 active nodes and wish to add 2 nodes. Specify
C<NumCacheNodes=5> (3 + 2) and optionally specify two Availability
Zones for the two new nodes.

=item *

B<Scenario 2:> You have 3 active nodes and 2 nodes pending creation
(from the scenario 1 call) and want to add 1 more node. Specify
C<NumCacheNodes=6> ((3 + 2) + 1) and optionally specify an Availability
Zone for the new node.

=item *

B<Scenario 3:> You want to cancel all pending operations. Specify
C<NumCacheNodes=3> to cancel all pending operations.

=back

The Availability Zone placement of nodes pending creation cannot be
modified. If you wish to cancel any nodes pending creation, add 0 nodes
by setting C<NumCacheNodes> to the number of current nodes.

If C<cross-az> is specified, existing Memcached nodes remain in their
current Availability Zone. Only newly created nodes can be located in
different Availability Zones. For guidance on how to move existing
Memcached nodes to different Availability Zones, see the B<Availability
Zone Considerations> section of Cache Node Considerations for Memcached
(http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html).

B<Impact of new add/remove requests upon pending requests>

=over

=item *

Scenario-1

=over

=item *

Pending Action: Delete

=item *

New Request: Delete

=item *

Result: The new delete, pending or immediate, replaces the pending
delete.

=back

=item *

Scenario-2

=over

=item *

Pending Action: Delete

=item *

New Request: Create

=item *

Result: The new create, pending or immediate, replaces the pending
delete.

=back

=item *

Scenario-3

=over

=item *

Pending Action: Create

=item *

New Request: Delete

=item *

Result: The new delete, pending or immediate, replaces the pending
create.

=back

=item *

Scenario-4

=over

=item *

Pending Action: Create

=item *

New Request: Create

=item *

Result: The new create is added to the pending create.

B<Important:> If the new create request is B<Apply Immediately - Yes>,
all creates are performed immediately. If the new create request is
B<Apply Immediately - No>, all creates are pending.

=back

=back




=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications are sent.

The Amazon SNS topic owner must be same as the cluster owner.



=head2 NotificationTopicStatus => Str

The status of the Amazon SNS notification topic. Notifications are sent
only if the status is C<active>.

Valid values: C<active> | C<inactive>



=head2 NumCacheNodes => Int

The number of cache nodes that the cluster should have. If the value
for C<NumCacheNodes> is greater than the sum of the number of current
cache nodes and the number of cache nodes pending creation (which may
be zero), more nodes are added. If the value is less than the number of
existing cache nodes, nodes are removed. If the value is equal to the
number of current cache nodes, any pending add or remove requests are
canceled.

If you are removing cache nodes, you must use the
C<CacheNodeIdsToRemove> parameter to provide the IDs of the specific
cache nodes to remove.

For clusters running Redis, this value must be 1. For clusters running
Memcached, this value must be between 1 and 20.

Adding or removing Memcached cache nodes can be applied immediately or
as a pending operation (see C<ApplyImmediately>).

A pending operation to modify the number of cache nodes in a cluster
during its maintenance window, whether by adding or removing nodes in
accordance with the scale out architecture, is not queued. The
customer's latest request to add or remove nodes to the cluster
overrides any previous pending operations to modify the number of cache
nodes in the cluster. For example, a request to remove 2 nodes would
override a previous pending operation to remove 3 nodes. Similarly, a
request to add 2 nodes would override a previous pending operation to
remove 3 nodes and vice versa. As Memcached cache nodes may now be
provisioned in different Availability Zones with flexible cache node
placement, a request to add nodes does not automatically override a
previous pending operation to add nodes. The customer can modify the
previous pending operation to add more nodes or explicitly cancel the
pending request and retry the new request. To cancel pending operations
to modify the number of cache nodes in a cluster, use the
C<ModifyCacheCluster> request and set C<NumCacheNodes> equal to the
number of cache nodes currently in the cluster.



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



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC Security Groups associated with the cluster.

This parameter can be used only with clusters that are created in an
Amazon Virtual Private Cloud (Amazon VPC).



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic cluster
snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

If the value of C<SnapshotRetentionLimit> is set to zero (0), backups
are turned off.



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCacheCluster in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

