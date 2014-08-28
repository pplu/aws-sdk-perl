
package Aws::EC2::AssociateAddressResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
1;