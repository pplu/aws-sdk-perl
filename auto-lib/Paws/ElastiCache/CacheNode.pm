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

=head1 USAGE

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

=head1 DESCRIPTION

Represents an individual cache node within a cluster. Each cache node
runs its own instance of the cluster's protocol-compliant caching
software - either Memcached or Redis.

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

=item *

Previous generation: (not recommended)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

B<R4 node types;> C<cache.r4.large>, C<cache.r4.xlarge>,
C<cache.r4.2xlarge>, C<cache.r4.4xlarge>, C<cache.r4.8xlarge>,
C<cache.r4.16xlarge>

=item *

Previous generation: (not recommended)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item *

All T2 instances are created in an Amazon Virtual Private Cloud (Amazon
VPC).

=item *

Redis (cluster mode disabled): Redis backup/restore is not supported on
T1 and T2 instances.

=item *

Redis (cluster mode enabled): Backup/restore is not supported on T1
instances.

=item *

Redis Append-only files (AOF) functionality is not supported for T1 or
T2 instances.

=back

For a complete listing of node types and specifications, see:

=over

=item *

Amazon ElastiCache Product Features and Details
(http://aws.amazon.com/elasticache/details)

=item *

Cache Node Type-Specific Parameters for Memcached
(http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific)

=item *

Cache Node Type-Specific Parameters for Redis
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific)

=back


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
synchronized. If this field is empty, this node is not associated with
a primary cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

