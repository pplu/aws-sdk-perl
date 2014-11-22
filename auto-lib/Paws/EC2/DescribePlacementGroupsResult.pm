
package Paws::EC2::DescribePlacementGroupsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PlacementGroup]', traits => ['Unwrapped'], xmlname => 'placementGroupSet');

}
1;