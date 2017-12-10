package Paws::ElastiCache::CacheSecurityGroupMembership;
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheSecurityGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheSecurityGroupMembership object:

  $service_obj->Method(Att1 => { CacheSecurityGroupName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheSecurityGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheSecurityGroupName

=head1 DESCRIPTION

Represents a cluster's status within a particular cache security group.

=head1 ATTRIBUTES


=head2 CacheSecurityGroupName => Str

  The name of the cache security group.


=head2 Status => Str

  The membership status in the cache security group. The status changes
when a cache security group is modified, or when the cache security
groups assigned to a cluster are modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

