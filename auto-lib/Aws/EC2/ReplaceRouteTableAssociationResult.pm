
package Aws::EC2::ReplaceRouteTableAssociationResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
1;