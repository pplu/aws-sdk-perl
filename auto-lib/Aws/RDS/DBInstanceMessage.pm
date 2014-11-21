
package Aws::RDS::DBInstanceMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstance]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;