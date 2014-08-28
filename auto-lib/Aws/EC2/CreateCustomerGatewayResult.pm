
package Aws::EC2::CreateCustomerGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CustomerGateway => (is => 'ro', isa => 'Aws::EC2::CustomerGateway', traits => ['Unwrapped'], xmlname => 'customerGateway');

}
1;