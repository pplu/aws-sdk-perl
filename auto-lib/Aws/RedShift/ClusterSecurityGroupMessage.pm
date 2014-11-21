
package Aws::RedShift::ClusterSecurityGroupMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;