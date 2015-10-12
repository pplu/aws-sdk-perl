package Paws::ElastiCache::NodeGroup;
  use Moose;
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NodeGroupMembers => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroupMember]');
  has PrimaryEndpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeGroup

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeGroup object:

  $service_obj->Method(Att1 => { NodeGroupId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeGroupId

=head1 ATTRIBUTES

=head2 NodeGroupId => Str

  The identifier for the node group. A replication group contains only
one node group; therefore, the node group ID is 0001.

=head2 NodeGroupMembers => ArrayRef[Paws::ElastiCache::NodeGroupMember]

  A list containing information about individual nodes within the node
group.

=head2 PrimaryEndpoint => Paws::ElastiCache::Endpoint

  

=head2 Status => Str

  The current state of this replication group - I<creating>,
I<available>, etc.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

