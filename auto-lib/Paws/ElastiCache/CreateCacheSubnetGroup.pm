
package Paws::ElastiCache::CreateCacheSubnetGroup;
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheSubnetGroup - Arguments for method CreateCacheSubnetGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCacheSubnetGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateCacheSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCacheSubnetGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CreateCacheSubnetGroupResult = $elasticache->CreateCacheSubnetGroup(
      CacheSubnetGroupDescription => 'MyString',
      CacheSubnetGroupName        => 'MyString',
      SubnetIds                   => [ 'MyString', ... ],

    );

    # Results:
    my $CacheSubnetGroup = $CreateCacheSubnetGroupResult->CacheSubnetGroup;

    # Returns a L<Paws::ElastiCache::CreateCacheSubnetGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateCacheSubnetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheSubnetGroupDescription => Str

A description for the cache subnet group.



=head2 B<REQUIRED> CacheSubnetGroupName => Str

A name for the cache subnet group. This value is stored as a lowercase
string.

Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.

Example: C<mysubnetgroup>



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of VPC subnet IDs for the cache subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCacheSubnetGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

