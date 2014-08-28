
package Aws::EC2::AttachVpnGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcAttachment => (is => 'ro', isa => 'Aws::EC2::VpcAttachment', traits => ['Unwrapped'], xmlname => 'attachment');

}
1;