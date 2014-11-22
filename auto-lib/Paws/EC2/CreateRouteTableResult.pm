
package Paws::EC2::CreateRouteTableResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has RouteTable => (is => 'ro', isa => 'Paws::EC2::RouteTable', traits => ['Unwrapped'], xmlname => 'routeTable');

}
1;