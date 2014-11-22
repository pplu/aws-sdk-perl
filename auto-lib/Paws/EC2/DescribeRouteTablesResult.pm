
package Paws::EC2::DescribeRouteTablesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has RouteTables => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteTable]', traits => ['Unwrapped'], xmlname => 'routeTableSet');

}
1;