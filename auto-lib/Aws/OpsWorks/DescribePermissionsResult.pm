
package Aws::OpsWorks::DescribePermissionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Permissions => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Permission]');

}
1;