
package Aws::EC2::CreateInternetGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InternetGateway => (is => 'ro', isa => 'Aws::EC2::InternetGateway', traits => ['Unwrapped'], xmlname => 'internetGateway');

}
1;