
package Aws::RedShift::ClusterSubnetGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;