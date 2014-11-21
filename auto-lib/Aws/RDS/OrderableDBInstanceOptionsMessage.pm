
package Aws::RDS::OrderableDBInstanceOptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OrderableDBInstanceOption]');

}
1;