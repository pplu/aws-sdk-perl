
package Paws::ElastiCache::RebootCacheCluster;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::RebootCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::RebootCacheCluster - Arguments for method RebootCacheCluster on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootCacheCluster on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method RebootCacheCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootCacheCluster.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $RebootCacheClusterResult = $elasticache->RebootCacheCluster(
      CacheClusterId       => 'MyString',
      CacheNodeIdsToReboot => [ 'MyString', ... ],

    );

    # Results:
    my $CacheCluster = $RebootCacheClusterResult->CacheCluster;

    # Returns a L<Paws::ElastiCache::RebootCacheClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/RebootCacheCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheClusterId => Str

The cluster identifier. This parameter is stored as a lowercase string.



=head2 B<REQUIRED> CacheNodeIdsToReboot => ArrayRef[Str|Undef]

A list of cache node IDs to reboot. A node ID is a numeric identifier
(0001, 0002, etc.). To reboot an entire cluster, specify all of the
cache node IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootCacheCluster in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

