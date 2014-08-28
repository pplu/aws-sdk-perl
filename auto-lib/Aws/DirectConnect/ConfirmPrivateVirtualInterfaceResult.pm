
package Aws::DirectConnect::ConfirmPrivateVirtualInterfaceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
1;
