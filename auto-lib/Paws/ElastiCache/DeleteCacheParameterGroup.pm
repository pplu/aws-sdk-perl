
package Paws::ElastiCache::DeleteCacheParameterGroup;
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteCacheParameterGroup - Arguments for method DeleteCacheParameterGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCacheParameterGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteCacheParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCacheParameterGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    # DeleteCacheParameterGroup
    # Deletes the Amazon ElastiCache parameter group custom-mem1-4.
    $elasticache->DeleteCacheParameterGroup(
      'CacheParameterGroupName' => 'custom-mem1-4' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteCacheParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheParameterGroupName => Str

The name of the cache parameter group to delete.

The specified cache security group must not be associated with any
clusters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCacheParameterGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

