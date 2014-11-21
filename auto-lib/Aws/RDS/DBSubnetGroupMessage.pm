
package Aws::RDS::DBSubnetGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;