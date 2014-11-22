
package Paws::RedShift::CreateClusterParameterGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterParameterGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterParameterGroup');

}
1;