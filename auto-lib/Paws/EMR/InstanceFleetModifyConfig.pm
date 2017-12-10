package Paws::EMR::InstanceFleetModifyConfig;
  use Moose;
  has InstanceFleetId => (is => 'ro', isa => 'Str', required => 1);
  has TargetOnDemandCapacity => (is => 'ro', isa => 'Int');
  has TargetSpotCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceFleetModifyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceFleetModifyConfig object:

  $service_obj->Method(Att1 => { InstanceFleetId => $value, ..., TargetSpotCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceFleetModifyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceFleetId

=head1 DESCRIPTION

Configuration parameters for an instance fleet modification request.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceFleetId => Str

  A unique identifier for the instance fleet.


=head2 TargetOnDemandCapacity => Int

  The target capacity of On-Demand units for the instance fleet. For more
information see InstanceFleetConfig$TargetOnDemandCapacity.


=head2 TargetSpotCapacity => Int

  The target capacity of Spot units for the instance fleet. For more
information, see InstanceFleetConfig$TargetSpotCapacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

