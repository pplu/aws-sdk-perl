
package Aws::RDS::DescribeReservedDBInstancesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstancesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstancesOfferings');

}
1;