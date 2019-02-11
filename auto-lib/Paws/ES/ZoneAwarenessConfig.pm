package Paws::ES::ZoneAwarenessConfig;
  use Moose;
  has AvailabilityZoneCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ZoneAwarenessConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ZoneAwarenessConfig object:

  $service_obj->Method(Att1 => { AvailabilityZoneCount => $value, ..., AvailabilityZoneCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ZoneAwarenessConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZoneCount

=head1 DESCRIPTION

Specifies the zone awareness configuration for the domain cluster, such
as the number of availability zones.

=head1 ATTRIBUTES


=head2 AvailabilityZoneCount => Int

  An integer value to indicate the number of availability zones for a
domain when zone awareness is enabled. This should be equal to number
of subnets if VPC endpoints is enabled



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

