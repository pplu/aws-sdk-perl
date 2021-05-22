
package Paws::ElastiCache::DecreaseNodeGroupsInGlobalReplicationGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', required => 1);
  has GlobalNodeGroupsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GlobalNodeGroupsToRetain => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has NodeGroupCount => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecreaseNodeGroupsInGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DecreaseNodeGroupsInGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DecreaseNodeGroupsInGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DecreaseNodeGroupsInGlobalReplicationGroup - Arguments for method DecreaseNodeGroupsInGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DecreaseNodeGroupsInGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DecreaseNodeGroupsInGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DecreaseNodeGroupsInGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DecreaseNodeGroupsInGlobalReplicationGroupResult =
      $elasticache->DecreaseNodeGroupsInGlobalReplicationGroup(
      ApplyImmediately         => 1,
      GlobalReplicationGroupId => 'MyString',
      NodeGroupCount           => 1,
      GlobalNodeGroupsToRemove => [ 'MyString', ... ],    # OPTIONAL
      GlobalNodeGroupsToRetain => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $GlobalReplicationGroup =
      $DecreaseNodeGroupsInGlobalReplicationGroupResult->GlobalReplicationGroup;

# Returns a L<Paws::ElastiCache::DecreaseNodeGroupsInGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DecreaseNodeGroupsInGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyImmediately => Bool

Indicates that the shard reconfiguration process begins immediately. At
present, the only permitted value for this parameter is true.



=head2 GlobalNodeGroupsToRemove => ArrayRef[Str|Undef]

If the value of NodeGroupCount is less than the current number of node
groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain
is required. GlobalNodeGroupsToRemove is a list of NodeGroupIds to
remove from the cluster. ElastiCache for Redis will attempt to remove
all node groups listed by GlobalNodeGroupsToRemove from the cluster.



=head2 GlobalNodeGroupsToRetain => ArrayRef[Str|Undef]

If the value of NodeGroupCount is less than the current number of node
groups (shards), then either NodeGroupsToRemove or NodeGroupsToRetain
is required. GlobalNodeGroupsToRetain is a list of NodeGroupIds to
retain from the cluster. ElastiCache for Redis will attempt to retain
all node groups listed by GlobalNodeGroupsToRetain from the cluster.



=head2 B<REQUIRED> GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 B<REQUIRED> NodeGroupCount => Int

The number of node groups (shards) that results from the modification
of the shard configuration




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DecreaseNodeGroupsInGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

