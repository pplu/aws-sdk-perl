
package Aws::RDS::DBSecurityGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;