
package Paws::IoTWireless::AssociateWirelessGatewayWithCertificateResponse;
  use Moose;
  has IotCertificateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateWirelessGatewayWithCertificateResponse

=head1 ATTRIBUTES


=head2 IotCertificateId => Str

The ID of the certificate associated with the wireless gateway.


=head2 _request_id => Str


=cut

