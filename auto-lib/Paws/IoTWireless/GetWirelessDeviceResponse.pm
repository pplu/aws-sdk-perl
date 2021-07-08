
package Paws::IoTWireless::GetWirelessDeviceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANDevice');
  has Name => (is => 'ro', isa => 'Str');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkDevice');
  has ThingArn => (is => 'ro', isa => 'Str');
  has ThingName => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessDeviceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Description => Str

The description of the resource.


=head2 DestinationName => Str

The name of the destination to which the device is assigned.


=head2 Id => Str

The ID of the wireless device.


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANDevice>

Information about the wireless device.


=head2 Name => Str

The name of the resource.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkDevice>

Sidewalk device object.


=head2 ThingArn => Str

The ARN of the thing associated with the wireless device.


=head2 ThingName => Str

The name of the thing associated with the wireless device. The value is
empty if a thing isn't associated with the device.


=head2 Type => Str

The wireless device type.

Valid values are: C<"Sidewalk">, C<"LoRaWAN">
=head2 _request_id => Str


=cut

