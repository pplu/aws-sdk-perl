
package Aws::DirectConnect::ConfirmPublicVirtualInterfaceResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
1;