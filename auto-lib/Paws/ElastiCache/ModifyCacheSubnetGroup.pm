
package Paws::ElastiCache::ModifyCacheSubnetGroup;
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyCacheSubnetGroup - Arguments for method ModifyCacheSubnetGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCacheSubnetGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyCacheSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCacheSubnetGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyCacheSubnetGroupResult = $elasticache->ModifyCacheSubnetGroup(
      CacheSubnetGroupName        => 'MyString',
      CacheSubnetGroupDescription => 'MyString',             # OPTIONAL
      SubnetIds                   => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $CacheSubnetGroup = $ModifyCacheSubnetGroupResult->CacheSubnetGroup;

    # Returns a L<Paws::ElastiCache::ModifyCacheSubnetGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyCacheSubnetGroup>

=head1 ATTRIBUTES


=head2 CacheSubnetGroupDescription => Str

A description of the cache subnet group.



=head2 B<REQUIRED> CacheSubnetGroupName => Str

The name for the cache subnet group. This value is stored as a
lowercase string.

Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.

Example: C<mysubnetgroup>



=head2 SubnetIds => ArrayRef[Str|Undef]

The EC2 subnet IDs for the cache subnet group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCacheSubnetGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

