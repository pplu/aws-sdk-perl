
package Paws::IoTWireless::GetWirelessGatewayCertificateResponse;
  use Moose;
  has IotCertificateId => (is => 'ro', isa => 'Str');
  has LoRaWANNetworkServerCertificateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessGatewayCertificateResponse

=head1 ATTRIBUTES


=head2 IotCertificateId => Str

The ID of the certificate associated with the wireless gateway.


=head2 LoRaWANNetworkServerCertificateId => Str

The ID of the certificate that is associated with the wireless gateway
and used for the LoRaWANNetworkServer endpoint.


=head2 _request_id => Str


=cut

