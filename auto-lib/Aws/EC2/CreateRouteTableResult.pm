
package Aws::EC2::CreateRouteTableResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has RouteTable => (is => 'ro', isa => 'Aws::EC2::RouteTable', traits => ['Unwrapped'], xmlname => 'routeTable');

}
1;