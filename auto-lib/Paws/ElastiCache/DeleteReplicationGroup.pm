
package Paws::ElastiCache::DeleteReplicationGroup;
  use Moose;
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryCluster => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteReplicationGroup - Arguments for method DeleteReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteReplicationGroupResult = $elasticache->DeleteReplicationGroup(
      ReplicationGroupId      => 'MyString',
      FinalSnapshotIdentifier => 'MyString',    # OPTIONAL
      RetainPrimaryCluster    => 1,             # OPTIONAL
    );

    # Results:
    my $ReplicationGroup = $DeleteReplicationGroupResult->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::DeleteReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteReplicationGroup>

=head1 ATTRIBUTES


=head2 FinalSnapshotIdentifier => Str

The name of a final node group (shard) snapshot. ElastiCache creates
the snapshot from the primary node in the cluster, rather than one of
the replicas; this is to ensure that it captures the freshest data.
After the final snapshot is taken, the replication group is immediately
deleted.



=head2 B<REQUIRED> ReplicationGroupId => Str

The identifier for the cluster to be deleted. This parameter is not
case sensitive.



=head2 RetainPrimaryCluster => Bool

If set to C<true>, all of the read replicas are deleted, but the
primary node is retained.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

