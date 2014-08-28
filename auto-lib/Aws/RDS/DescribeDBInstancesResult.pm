
package Aws::RDS::DescribeDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstance]', traits => ['Unwrapped'], xmlname => 'DBInstance');
  has Marker => (is => 'ro', isa => 'Str');

}
1;