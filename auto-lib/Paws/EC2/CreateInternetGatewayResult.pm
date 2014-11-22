
package Paws::EC2::CreateInternetGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InternetGateway => (is => 'ro', isa => 'Paws::EC2::InternetGateway', traits => ['Unwrapped'], xmlname => 'internetGateway');

}
1;