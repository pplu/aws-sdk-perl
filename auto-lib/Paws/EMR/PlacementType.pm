package Paws::EMR::PlacementType;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PlacementType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::PlacementType object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., AvailabilityZones => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::PlacementType object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The Amazon EC2 Availability Zone configuration of the cluster (job
flow).

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Amazon EC2 Availability Zone for the cluster. C<AvailabilityZone>
is used for uniform instance groups, while C<AvailabilityZones>
(plural) is used for instance fleets.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  When multiple Availability Zones are specified, Amazon EMR evaluates
them and launches instances in the optimal Availability Zone.
C<AvailabilityZones> is used for instance fleets, while
C<AvailabilityZone> (singular) is used for uniform instance groups.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

