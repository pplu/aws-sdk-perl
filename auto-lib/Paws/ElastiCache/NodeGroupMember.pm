package Paws::ElastiCache::NodeGroupMember;
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CurrentRole => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has ReadEndpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeGroupMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeGroupMember object:

  $service_obj->Method(Att1 => { CacheClusterId => $value, ..., ReadEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeGroupMember object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheClusterId

=head1 DESCRIPTION

Represents a single node within a node group (shard).

=head1 ATTRIBUTES


=head2 CacheClusterId => Str

  The ID of the cluster to which the node belongs.


=head2 CacheNodeId => Str

  The ID of the node within its cluster. A node ID is a numeric
identifier (0001, 0002, etc.).


=head2 CurrentRole => Str

  The role that is currently assigned to the node - C<primary> or
C<replica>. This member is only applicable for Redis (cluster mode
disabled) replication groups.


=head2 PreferredAvailabilityZone => Str

  The name of the Availability Zone in which the node is located.


=head2 ReadEndpoint => L<Paws::ElastiCache::Endpoint>

  The information required for client programs to connect to a node for
read operations. The read endpoint is only applicable on Redis (cluster
mode disabled) clusters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

