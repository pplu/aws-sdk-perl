
package Aws::RDS::DescribeOrderableDBInstanceOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OrderableDBInstanceOption]', traits => ['Unwrapped'], xmlname => 'OrderableDBInstanceOption');

}
1;