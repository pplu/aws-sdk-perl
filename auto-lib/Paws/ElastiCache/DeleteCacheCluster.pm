
package Paws::ElastiCache::DeleteCacheCluster;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteCacheCluster - Arguments for method DeleteCacheCluster on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCacheCluster on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteCacheCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCacheCluster.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteCacheClusterResult = $elasticache->DeleteCacheCluster(
      CacheClusterId          => 'MyString',
      FinalSnapshotIdentifier => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CacheCluster = $DeleteCacheClusterResult->CacheCluster;

    # Returns a L<Paws::ElastiCache::DeleteCacheClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteCacheCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheClusterId => Str

The cluster identifier for the cluster to be deleted. This parameter is
not case sensitive.



=head2 FinalSnapshotIdentifier => Str

The user-supplied name of a final cluster snapshot. This is the unique
name that identifies the snapshot. ElastiCache creates the snapshot,
and then deletes the cluster immediately afterward.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCacheCluster in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

