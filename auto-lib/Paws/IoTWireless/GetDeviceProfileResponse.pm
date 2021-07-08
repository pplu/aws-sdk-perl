
package Paws::IoTWireless::GetDeviceProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANDeviceProfile');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetDeviceProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Id => Str

The ID of the device profile.


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANDeviceProfile>

Information about the device profile.


=head2 Name => Str

The name of the resource.


=head2 _request_id => Str


=cut

