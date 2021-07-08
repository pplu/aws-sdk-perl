
package Paws::IoTWireless::GetServiceProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANGetServiceProfileInfo');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetServiceProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Id => Str

The ID of the service profile.


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANGetServiceProfileInfo>

Information about the service profile.


=head2 Name => Str

The name of the resource.


=head2 _request_id => Str


=cut

