
package Paws::ElastiCache::CreateSnapshot;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateSnapshot - Arguments for method CreateSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
   # CreateSnapshot - NonClustered Redis, no read-replicas
   # Creates a snapshot of a non-clustered Redis cluster that has only one node.
    my $CreateSnapshotResult = $elasticache->CreateSnapshot(
      'CacheClusterId' => 'onenoderedis',
      'SnapshotName'   => 'snapshot-1'
    );

    # Results:
    my $Snapshot = $CreateSnapshotResult->Snapshot;

# Returns a L<Paws::ElastiCache::CreateSnapshotResult> object.
# CreateSnapshot - NonClustered Redis, 2 read-replicas
# Creates a snapshot of a non-clustered Redis cluster that has only three nodes,
# primary and two read-replicas. CacheClusterId must be a specific node in the
# cluster.
    my $CreateSnapshotResult = $elasticache->CreateSnapshot(
      'CacheClusterId' => 'threenoderedis-001',
      'SnapshotName'   => 'snapshot-2'
    );

    # Results:
    my $Snapshot = $CreateSnapshotResult->Snapshot;

# Returns a L<Paws::ElastiCache::CreateSnapshotResult> object.
# CreateSnapshot-clustered Redis
# Creates a snapshot of a clustered Redis cluster that has 2 shards, each with a
# primary and 4 read-replicas.
    my $CreateSnapshotResult = $elasticache->CreateSnapshot(
      'ReplicationGroupId' => 'clusteredredis',
      'SnapshotName'       => 'snapshot-2x5'
    );

    # Results:
    my $Snapshot = $CreateSnapshotResult->Snapshot;

    # Returns a L<Paws::ElastiCache::CreateSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateSnapshot>

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

The identifier of an existing cluster. The snapshot is created from
this cluster.



=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the snapshot.



=head2 ReplicationGroupId => Str

The identifier of an existing replication group. The snapshot is
created from this replication group.



=head2 B<REQUIRED> SnapshotName => Str

A name for the snapshot being created.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to this resource. A tag is a key-value pair.
A tag key must be accompanied by a tag value, although null is
accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

