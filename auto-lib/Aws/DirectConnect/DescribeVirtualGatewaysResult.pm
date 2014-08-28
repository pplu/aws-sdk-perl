
package Aws::DirectConnect::DescribeVirtualGatewaysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualGateways => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualGateway]');

}
1;
