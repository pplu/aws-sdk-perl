
package Aws::OpsWorks::DescribeServiceErrorsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ServiceError]');

}
1;