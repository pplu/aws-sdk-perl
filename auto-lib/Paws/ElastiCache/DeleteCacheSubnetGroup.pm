
package Paws::ElastiCache::DeleteCacheSubnetGroup;
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteCacheSubnetGroup - Arguments for method DeleteCacheSubnetGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCacheSubnetGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteCacheSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCacheSubnetGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    $elasticache->DeleteCacheSubnetGroup(
      CacheSubnetGroupName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteCacheSubnetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheSubnetGroupName => Str

The name of the cache subnet group to delete.

Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCacheSubnetGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

