
package Paws::ElastiCache::DecreaseReplicaCount;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', required => 1);
  has NewReplicaCount => (is => 'ro', isa => 'Int');
  has ReplicaConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ConfigureShard]');
  has ReplicasToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecreaseReplicaCount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DecreaseReplicaCountResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DecreaseReplicaCountResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DecreaseReplicaCount - Arguments for method DecreaseReplicaCount on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DecreaseReplicaCount on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DecreaseReplicaCount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DecreaseReplicaCount.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DecreaseReplicaCountResult = $elasticache->DecreaseReplicaCount(
      ApplyImmediately     => 1,
      ReplicationGroupId   => 'MyString',
      NewReplicaCount      => 1,            # OPTIONAL
      ReplicaConfiguration => [
        {
          NewReplicaCount            => 1,
          NodeGroupId                => 'MyAllowedNodeGroupId', # min: 1, max: 4
          PreferredAvailabilityZones => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                                        # OPTIONAL
      ReplicasToRemove => [ 'MyString', ... ],                  # OPTIONAL
    );

    # Results:
    my $ReplicationGroup = $DecreaseReplicaCountResult->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::DecreaseReplicaCountResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DecreaseReplicaCount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyImmediately => Bool

If C<True>, the number of replica nodes is decreased immediately. If
C<False>, the number of replica nodes is decreased during the next
maintenance window.



=head2 NewReplicaCount => Int

The number of read replica nodes you want at the completion of this
operation. For Redis (cluster mode disabled) replication groups, this
is the number of replica nodes in the replication group. For Redis
(cluster mode enabled) replication groups, this is the number of
replica nodes in each of the replication group's node groups.

The minimum number of replicas in a shard or replication group is:

=over

=item *

Redis (cluster mode disabled)

=over

=item *

If Multi-AZ with Automatic Failover is enabled: 1

=item *

If Multi-AZ with Automatic Failover is not enabled: 0

=back

=item *

Redis (cluster mode enabled): 0 (though you will not be able to
failover to a replica if your primary node fails)

=back




=head2 ReplicaConfiguration => ArrayRef[L<Paws::ElastiCache::ConfigureShard>]

A list of C<ConfigureShard> objects that can be used to configure each
shard in a Redis (cluster mode enabled) replication group. The
C<ConfigureShard> has three members: C<NewReplicaCount>,
C<NodeGroupId>, and C<PreferredAvailabilityZones>.



=head2 ReplicasToRemove => ArrayRef[Str|Undef]

A list of the node ids to remove from the replication group or node
group (shard).



=head2 B<REQUIRED> ReplicationGroupId => Str

The id of the replication group from which you want to remove replica
nodes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DecreaseReplicaCount in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

