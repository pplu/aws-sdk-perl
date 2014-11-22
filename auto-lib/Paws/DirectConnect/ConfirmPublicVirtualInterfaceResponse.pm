
package Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
1;