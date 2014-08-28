
package Aws::EC2::ConfirmProductInstanceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');

}
1;