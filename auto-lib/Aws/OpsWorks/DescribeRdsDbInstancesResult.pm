
package Aws::OpsWorks::DescribeRdsDbInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RdsDbInstances => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::RdsDbInstance]');

}
1;
