
package Paws::EC2::AssociateRouteTableResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
1;