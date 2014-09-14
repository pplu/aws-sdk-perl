
package Aws::OpsWorks::DescribeAppsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Apps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::App]');

}
1;
