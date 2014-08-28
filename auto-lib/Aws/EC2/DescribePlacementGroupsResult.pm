
package Aws::EC2::DescribePlacementGroupsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PlacementGroup]', traits => ['Unwrapped'], xmlname => 'placementGroupSet');

}
1;