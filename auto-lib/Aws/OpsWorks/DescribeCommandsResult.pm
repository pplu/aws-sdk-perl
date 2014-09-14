
package Aws::OpsWorks::DescribeCommandsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Commands => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Command]');

}
1;
