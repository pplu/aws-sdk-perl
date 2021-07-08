
package Paws::IoTWireless::AssociateWirelessDeviceWithThing;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has ThingArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWirelessDeviceWithThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Id}/thing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::AssociateWirelessDeviceWithThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateWirelessDeviceWithThing - Arguments for method AssociateWirelessDeviceWithThing on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWirelessDeviceWithThing on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method AssociateWirelessDeviceWithThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWirelessDeviceWithThing.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $AssociateWirelessDeviceWithThingResponse =
      $api . iotwireless->AssociateWirelessDeviceWithThing(
      Id       => 'MyWirelessDeviceId',
      ThingArn => 'MyThingArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/AssociateWirelessDeviceWithThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the resource to update.



=head2 B<REQUIRED> ThingArn => Str

The ARN of the thing to associate with the wireless device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWirelessDeviceWithThing in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

