
package Paws::EC2::DescribeInternetGatewaysResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InternetGateway]', traits => ['Unwrapped'], xmlname => 'internetGatewaySet');

}
1;