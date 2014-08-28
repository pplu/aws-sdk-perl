
package Aws::RDS::DescribeReservedDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstance]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstance');

}
1;