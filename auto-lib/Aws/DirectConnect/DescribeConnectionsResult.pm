
package Aws::DirectConnect::DescribeConnectionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has connections => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Connection]');

}
1;
