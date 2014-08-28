
package Aws::RedShift::ModifyClusterSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
1;