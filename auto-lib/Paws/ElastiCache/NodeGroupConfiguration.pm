package Paws::ElastiCache::NodeGroupConfiguration;
  use Moose;
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has PrimaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has ReplicaAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
  has ReplicaCount => (is => 'ro', isa => 'Int');
  has Slots => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeGroupConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeGroupConfiguration object:

  $service_obj->Method(Att1 => { NodeGroupId => $value, ..., Slots => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeGroupConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeGroupId

=head1 DESCRIPTION

Node group (shard) configuration options. Each node group (shard)
configuration has the following: C<Slots>, C<PrimaryAvailabilityZone>,
C<ReplicaAvailabilityZones>, C<ReplicaCount>.

=head1 ATTRIBUTES


=head2 NodeGroupId => Str

  The 4-digit id for the node group these configuration values apply to.


=head2 PrimaryAvailabilityZone => Str

  The Availability Zone where the primary node of this node group (shard)
is launched.


=head2 ReplicaAvailabilityZones => ArrayRef[Str|Undef]

  A list of Availability Zones to be used for the read replicas. The
number of Availability Zones in this list must match the value of
C<ReplicaCount> or C<ReplicasPerNodeGroup> if not specified.


=head2 ReplicaCount => Int

  The number of read replica nodes in this node group (shard).


=head2 Slots => Str

  A string that specifies the keyspace for a particular node group.
Keyspaces range from 0 to 16,383. The string is in the format
C<startkey-endkey>.

Example: C<"0-3999">



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

