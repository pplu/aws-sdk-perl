
package Aws::OpsWorks::DescribeInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Instance]');

}
1;
