package Paws::EMR::InstanceFleetProvisioningSpecifications;
  use Moose;
  has SpotSpecification => (is => 'ro', isa => 'Paws::EMR::SpotProvisioningSpecification', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleetProvisioningSpecifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleetProvisioningSpecifications object:

  $service_obj->Method(Att1 => { SpotSpecification => $value, ..., SpotSpecification => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleetProvisioningSpecifications object:

  $result = $service_obj->Method(...);
  $result->Att1->SpotSpecification

=head1 DESCRIPTION

The launch specification for Spot instances in the fleet, which
determines the defined duration and provisioning timeout behavior.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpotSpecification => L<Paws::EMR::SpotProvisioningSpecification>

  The launch specification for Spot instances in the fleet, which
determines the defined duration and provisioning timeout behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

