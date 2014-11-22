
package Paws::OpsWorks::DescribeServiceErrorsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::ServiceError]');

}
1;