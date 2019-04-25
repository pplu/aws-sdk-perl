
package Paws::ElastiCache::CreateCacheParameterGroup;
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheParameterGroup - Arguments for method CreateCacheParameterGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCacheParameterGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateCacheParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCacheParameterGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CreateCacheParameterGroupResult =
      $elasticache->CreateCacheParameterGroup(
      CacheParameterGroupFamily => 'MyString',
      CacheParameterGroupName   => 'MyString',
      Description               => 'MyString',

      );

    # Results:
    my $CacheParameterGroup =
      $CreateCacheParameterGroupResult->CacheParameterGroup;

    # Returns a L<Paws::ElastiCache::CreateCacheParameterGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateCacheParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheParameterGroupFamily => Str

The name of the cache parameter group family that the cache parameter
group can be used with.

Valid values are: C<memcached1.4> | C<redis2.6> | C<redis2.8> |
C<redis3.2> | C<redis4.0>



=head2 B<REQUIRED> CacheParameterGroupName => Str

A user-specified name for the cache parameter group.



=head2 B<REQUIRED> Description => Str

A user-specified description for the cache parameter group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCacheParameterGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

