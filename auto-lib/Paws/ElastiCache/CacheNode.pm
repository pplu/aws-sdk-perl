package Paws::ElastiCache::CacheNode;
  use Moose;
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheNodeStatus => (is => 'ro', isa => 'Str');
  has CustomerAvailabilityZone => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Paws::ElastiCache::Endpoint');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
  has SourceCacheNodeId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheNode

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::CacheNode object:

  $service_obj->Method(Att1 => { CacheNodeCreateTime => $value, ..., SourceCacheNodeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::CacheNode object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeCreateTime

=head1 ATTRIBUTES

=head2 CacheNodeCreateTime => Str

  The date and time when the cache node was created.

=head2 CacheNodeId => Str

  The cache node identifier. A node ID is a numeric identifier (0001,
0002, etc.). The combination of cluster ID and node ID uniquely
identifies every cache node used in a customer's AWS account.

=head2 CacheNodeStatus => Str

  The current state of this cache node.

=head2 CustomerAvailabilityZone => Str

  The Availability Zone where this node was created and now resides.

=head2 Endpoint => L<Paws::ElastiCache::Endpoint>

  The hostname for connecting to this cache node.

=head2 ParameterGroupStatus => Str

  The status of the parameter group applied to this cache node.

=head2 SourceCacheNodeId => Str

  The ID of the primary node to which this read replica node is
synchronized. If this field is empty, then this node is not associated
with a primary cache cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

