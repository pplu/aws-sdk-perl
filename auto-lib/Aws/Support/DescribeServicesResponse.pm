
package Aws::Support::DescribeServicesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has services => (is => 'ro', isa => 'ArrayRef[Aws::Support::Service]');

}
1;