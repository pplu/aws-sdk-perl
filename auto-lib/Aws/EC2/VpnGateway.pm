package Aws::EC2::VpnGateway {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpcAttachment]', traits => ['Unwrapped'], xmlname => 'attachments');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}
1;
