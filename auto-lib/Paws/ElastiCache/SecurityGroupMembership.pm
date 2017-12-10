package Paws::ElastiCache::SecurityGroupMembership;
  use Moose;
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::SecurityGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::SecurityGroupMembership object:

  $service_obj->Method(Att1 => { SecurityGroupId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::SecurityGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupId

=head1 DESCRIPTION

Represents a single cache security group and its status.

=head1 ATTRIBUTES


=head2 SecurityGroupId => Str

  The identifier of the cache security group.


=head2 Status => Str

  The status of the cache security group membership. The status changes
whenever a cache security group is modified, or when the cache security
groups assigned to a cluster are modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

