
package Aws::EC2::DescribeRouteTablesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has RouteTables => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RouteTable]', traits => ['Unwrapped'], xmlname => 'routeTableSet');

}
1;