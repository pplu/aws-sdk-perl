
package Paws::IoTWireless::UpdateWirelessDevice;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANUpdateDevice');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWirelessDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-devices/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateWirelessDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateWirelessDevice - Arguments for method UpdateWirelessDevice on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWirelessDevice on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateWirelessDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWirelessDevice.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateWirelessDeviceResponse = $api . iotwireless->UpdateWirelessDevice(
      Id              => 'MyWirelessDeviceId',
      Description     => 'MyDescription',        # OPTIONAL
      DestinationName => 'MyDestinationName',    # OPTIONAL
      LoRaWAN         => {
        DeviceProfileId  => 'MyDeviceProfileId',     # max: 256; OPTIONAL
        ServiceProfileId => 'MyServiceProfileId',    # max: 256; OPTIONAL
      },    # OPTIONAL
      Name => 'MyWirelessDeviceName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateWirelessDevice>

=head1 ATTRIBUTES


=head2 Description => Str

A new description of the resource.



=head2 DestinationName => Str

The name of the new destination for the device.



=head2 B<REQUIRED> Id => Str

The ID of the resource to update.



=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANUpdateDevice>

The updated wireless device's configuration.



=head2 Name => Str

The new name of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWirelessDevice in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

