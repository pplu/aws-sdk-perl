
package Paws::OpsWorks::DescribeRdsDbInstancesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has RdsDbInstances => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::RdsDbInstance]');

}
1;