
package Paws::EC2::ConfirmProductInstanceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');

}
1;