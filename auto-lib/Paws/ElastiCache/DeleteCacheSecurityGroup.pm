
package Paws::ElastiCache::DeleteCacheSecurityGroup;
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteCacheSecurityGroup - Arguments for method DeleteCacheSecurityGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCacheSecurityGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteCacheSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCacheSecurityGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    $elasticache->DeleteCacheSecurityGroup(
      CacheSecurityGroupName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteCacheSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheSecurityGroupName => Str

The name of the cache security group to delete.

You cannot delete the default security group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCacheSecurityGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

