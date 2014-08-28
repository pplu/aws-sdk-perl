
package Aws::RedShift::CreateClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterParameterGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterParameterGroup');

}
1;