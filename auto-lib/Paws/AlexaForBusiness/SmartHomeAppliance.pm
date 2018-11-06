package Paws::AlexaForBusiness::SmartHomeAppliance;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FriendlyName => (is => 'ro', isa => 'Str');
  has ManufacturerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SmartHomeAppliance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::SmartHomeAppliance object:

  $service_obj->Method(Att1 => { Description => $value, ..., ManufacturerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::SmartHomeAppliance object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A smart home appliance that can connect to a central system. Any
domestic device can be a smart appliance.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the smart home appliance.


=head2 FriendlyName => Str

  The friendly name of the smart home appliance.


=head2 ManufacturerName => Str

  The name of the manufacturer of the smart home appliance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

