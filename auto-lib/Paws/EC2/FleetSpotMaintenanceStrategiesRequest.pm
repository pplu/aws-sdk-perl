package Paws::EC2::FleetSpotMaintenanceStrategiesRequest;
  use Moose;
  has CapacityRebalance => (is => 'ro', isa => 'Paws::EC2::FleetSpotCapacityRebalanceRequest');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetSpotMaintenanceStrategiesRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetSpotMaintenanceStrategiesRequest object:

  $service_obj->Method(Att1 => { CapacityRebalance => $value, ..., CapacityRebalance => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetSpotMaintenanceStrategiesRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityRebalance

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CapacityRebalance => L<Paws::EC2::FleetSpotCapacityRebalanceRequest>

The strategy to use when Amazon EC2 emits a signal that your Spot
Instance is at an elevated risk of being interrupted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
