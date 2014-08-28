
package Aws::EC2::DescribeCustomerGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CustomerGateway]', traits => ['Unwrapped'], xmlname => 'customerGatewaySet');

}
1;