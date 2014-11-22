
package Paws::DirectConnect::ConfirmConnectionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has connectionState => (is => 'ro', isa => 'Str');

}
1;