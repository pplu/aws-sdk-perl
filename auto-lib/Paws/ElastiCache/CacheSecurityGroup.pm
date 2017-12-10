package Paws::ElastiCache::CacheSecurityGroup;
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::EC2SecurityGroup]', request_name => 'EC2SecurityGroup', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheSecurityGroup object:

  $service_obj->Method(Att1 => { CacheSecurityGroupName => $value, ..., OwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheSecurityGroupName

=head1 DESCRIPTION

Represents the output of one of the following operations:

=over

=item *

C<AuthorizeCacheSecurityGroupIngress>

=item *

C<CreateCacheSecurityGroup>

=item *

C<RevokeCacheSecurityGroupIngress>

=back


=head1 ATTRIBUTES


=head2 CacheSecurityGroupName => Str

  The name of the cache security group.


=head2 Description => Str

  The description of the cache security group.


=head2 EC2SecurityGroups => ArrayRef[L<Paws::ElastiCache::EC2SecurityGroup>]

  A list of Amazon EC2 security groups that are associated with this
cache security group.


=head2 OwnerId => Str

  The AWS account ID of the cache security group owner.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

