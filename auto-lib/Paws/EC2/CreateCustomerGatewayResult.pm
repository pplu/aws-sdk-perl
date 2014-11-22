
package Paws::EC2::CreateCustomerGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has CustomerGateway => (is => 'ro', isa => 'Paws::EC2::CustomerGateway', traits => ['Unwrapped'], xmlname => 'customerGateway');

}
1;