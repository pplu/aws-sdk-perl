
package Paws::IoTWireless::GetWirelessGatewayResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANGateway');
  has Name => (is => 'ro', isa => 'Str');
  has ThingArn => (is => 'ro', isa => 'Str');
  has ThingName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Description => Str

The description of the resource.


=head2 Id => Str

The ID of the wireless gateway.


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANGateway>

Information about the wireless gateway.


=head2 Name => Str

The name of the resource.


=head2 ThingArn => Str

The ARN of the thing associated with the wireless gateway.


=head2 ThingName => Str

The name of the thing associated with the wireless gateway. The value
is empty if a thing isn't associated with the gateway.


=head2 _request_id => Str


=cut

