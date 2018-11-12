
package Paws::ElastiCache::ModifyReplicationGroupShardConfiguration;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', required => 1);
  has NodeGroupCount => (is => 'ro', isa => 'Int', required => 1);
  has NodeGroupsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NodeGroupsToRetain => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has ReshardingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ReshardingConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupShardConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyReplicationGroupShardConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupShardConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyReplicationGroupShardConfiguration - Arguments for method ModifyReplicationGroupShardConfiguration on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationGroupShardConfiguration on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyReplicationGroupShardConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationGroupShardConfiguration.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyReplicationGroupShardConfigurationResult =
      $elasticache->ModifyReplicationGroupShardConfiguration(
      ApplyImmediately   => 1,
      NodeGroupCount     => 1,
      ReplicationGroupId => 'MyString',
      NodeGroupsToRemove => [
        'MyAllowedNodeGroupId', ...    # min: 1, max: 4
      ],                               # OPTIONAL
      NodeGroupsToRetain => [
        'MyAllowedNodeGroupId', ...    # min: 1, max: 4
      ],                               # OPTIONAL
      ReshardingConfiguration => [
        {
          NodeGroupId => 'MyAllowedNodeGroupId',                # min: 1, max: 4
          PreferredAvailabilityZones => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                                        # OPTIONAL
      );

    # Results:
    my $ReplicationGroup =
      $ModifyReplicationGroupShardConfigurationResult->ReplicationGroup;

# Returns a L<Paws::ElastiCache::ModifyReplicationGroupShardConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyReplicationGroupShardConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyImmediately => Bool

Indicates that the shard reconfiguration process begins immediately. At
present, the only permitted value for this parameter is C<true>.

Value: true



=head2 B<REQUIRED> NodeGroupCount => Int

The number of node groups (shards) that results from the modification
of the shard configuration.



=head2 NodeGroupsToRemove => ArrayRef[Str|Undef]

If the value of C<NodeGroupCount> is less than the current number of
node groups (shards), the C<NodeGroupsToRemove> or
C<NodeGroupsToRetain> is a required list of node group ids to remove
from or retain in the cluster.

ElastiCache for Redis will attempt to remove all node groups listed by
C<NodeGroupsToRemove> from the cluster.



=head2 NodeGroupsToRetain => ArrayRef[Str|Undef]

If the value of C<NodeGroupCount> is less than the current number of
node groups (shards), the C<NodeGroupsToRemove> or
C<NodeGroupsToRetain> is a required list of node group ids to remove
from or retain in the cluster.

ElastiCache for Redis will attempt to remove all node groups except
those listed by C<NodeGroupsToRetain> from the cluster.



=head2 B<REQUIRED> ReplicationGroupId => Str

The name of the Redis (cluster mode enabled) cluster (replication
group) on which the shards are to be configured.



=head2 ReshardingConfiguration => ArrayRef[L<Paws::ElastiCache::ReshardingConfiguration>]

Specifies the preferred availability zones for each node group in the
cluster. If the value of C<NodeGroupCount> is greater than the current
number of node groups (shards), you can use this parameter to specify
the preferred availability zones of the cluster's shards. If you omit
this parameter ElastiCache selects availability zones for you.

You can specify this parameter only if the value of C<NodeGroupCount>
is greater than the current number of node groups (shards).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationGroupShardConfiguration in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

