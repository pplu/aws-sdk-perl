
package Paws::RedShift::CreateClusterSubnetGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterSubnetGroup');

}
1;