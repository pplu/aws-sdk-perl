package Paws::ElastiCache::ReshardingConfiguration;
  use Moose;
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReshardingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReshardingConfiguration object:

  $service_obj->Method(Att1 => { NodeGroupId => $value, ..., PreferredAvailabilityZones => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReshardingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeGroupId

=head1 DESCRIPTION

A list of C<PreferredAvailabilityZones> objects that specifies the
configuration of a node group in the resharded cluster.

=head1 ATTRIBUTES


=head2 NodeGroupId => Str

  The 4-digit id for the node group these configuration values apply to.


=head2 PreferredAvailabilityZones => ArrayRef[Str|Undef]

  A list of preferred availability zones for the nodes in this cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

