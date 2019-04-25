
package Paws::ElastiCache::DescribeCacheClusters;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheClustersNotInReplicationGroups => (is => 'ro', isa => 'Bool');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CacheClusterMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeCacheClusters - Arguments for method DescribeCacheClusters on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCacheClusters on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeCacheClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCacheClusters.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CacheClusterMessage = $elasticache->DescribeCacheClusters(
      CacheClusterId                          => 'MyString',    # OPTIONAL
      Marker                                  => 'MyString',    # OPTIONAL
      MaxRecords                              => 1,             # OPTIONAL
      ShowCacheClustersNotInReplicationGroups => 1,             # OPTIONAL
      ShowCacheNodeInfo                       => 1,             # OPTIONAL
    );

    # Results:
    my $CacheClusters = $CacheClusterMessage->CacheClusters;
    my $Marker        = $CacheClusterMessage->Marker;

    # Returns a L<Paws::ElastiCache::CacheClusterMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeCacheClusters>

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

The user-supplied cluster identifier. If this parameter is specified,
only information about that specific cluster is returned. This
parameter isn't case sensitive.



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a marker is
included in the response so that the remaining results can be
retrieved.

Default: 100

Constraints: minimum 20; maximum 100.



=head2 ShowCacheClustersNotInReplicationGroups => Bool

An optional flag that can be included in the C<DescribeCacheCluster>
request to show only nodes (API/CLI: clusters) that are not members of
a replication group. In practice, this mean Memcached and single node
Redis clusters.



=head2 ShowCacheNodeInfo => Bool

An optional flag that can be included in the C<DescribeCacheCluster>
request to retrieve information about the individual cache nodes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCacheClusters in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

