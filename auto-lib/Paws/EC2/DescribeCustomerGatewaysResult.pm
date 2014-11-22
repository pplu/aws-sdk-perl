
package Paws::EC2::DescribeCustomerGatewaysResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CustomerGateway]', traits => ['Unwrapped'], xmlname => 'customerGatewaySet');

}
1;