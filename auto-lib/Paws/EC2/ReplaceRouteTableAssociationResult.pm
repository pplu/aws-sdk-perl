
package Paws::EC2::ReplaceRouteTableAssociationResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
1;