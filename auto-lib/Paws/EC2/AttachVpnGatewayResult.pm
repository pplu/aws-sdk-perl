
package Paws::EC2::AttachVpnGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpcAttachment => (is => 'ro', isa => 'Paws::EC2::VpcAttachment', traits => ['Unwrapped'], xmlname => 'attachment');

}
1;