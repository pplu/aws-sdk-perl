
package Aws::EC2::DescribeInternetGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InternetGateway]', traits => ['Unwrapped'], xmlname => 'internetGatewaySet');

}
1;