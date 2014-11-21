
package Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
1;