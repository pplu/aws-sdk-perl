
package Aws::RDS::ReservedDBInstanceMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstance]');

}
1;