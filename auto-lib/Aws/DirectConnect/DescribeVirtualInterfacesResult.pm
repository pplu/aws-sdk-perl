
package Aws::DirectConnect::DescribeVirtualInterfacesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has virtualInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::VirtualInterface]');

}
1;
