
package Paws::ElastiCache::IncreaseNodeGroupsInGlobalReplicationGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', required => 1);
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has NodeGroupCount => (is => 'ro', isa => 'Int', required => 1);
  has RegionalConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::RegionalConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IncreaseNodeGroupsInGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::IncreaseNodeGroupsInGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'IncreaseNodeGroupsInGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::IncreaseNodeGroupsInGlobalReplicationGroup - Arguments for method IncreaseNodeGroupsInGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IncreaseNodeGroupsInGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method IncreaseNodeGroupsInGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IncreaseNodeGroupsInGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $IncreaseNodeGroupsInGlobalReplicationGroupResult =
      $elasticache->IncreaseNodeGroupsInGlobalReplicationGroup(
      ApplyImmediately         => 1,
      GlobalReplicationGroupId => 'MyString',
      NodeGroupCount           => 1,
      RegionalConfigurations   => [
        {
          ReplicationGroupId      => 'MyString',
          ReplicationGroupRegion  => 'MyString',
          ReshardingConfiguration => [
            {
              NodeGroupId => 'MyAllowedNodeGroupId',  # min: 1, max: 4; OPTIONAL
              PreferredAvailabilityZones => [ 'MyString', ... ],    # OPTIONAL
            },
            ...
          ],

        },
        ...
      ],                                                            # OPTIONAL
      );

    # Results:
    my $GlobalReplicationGroup =
      $IncreaseNodeGroupsInGlobalReplicationGroupResult->GlobalReplicationGroup;

# Returns a L<Paws::ElastiCache::IncreaseNodeGroupsInGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/IncreaseNodeGroupsInGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyImmediately => Bool

Indicates that the process begins immediately. At present, the only
permitted value for this parameter is true.



=head2 B<REQUIRED> GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 B<REQUIRED> NodeGroupCount => Int

The number of node groups you wish to add



=head2 RegionalConfigurations => ArrayRef[L<Paws::ElastiCache::RegionalConfiguration>]

Describes the replication group IDs, the AWS regions where they are
stored and the shard configuration for each that comprise the Global
datastore




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IncreaseNodeGroupsInGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

