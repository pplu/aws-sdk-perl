
package Aws::DirectConnect::DeleteVirtualInterfaceResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaceState => (is => 'ro', isa => 'Str');

}
1;