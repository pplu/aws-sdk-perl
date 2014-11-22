
package Paws::RedShift::CreateClusterSecurityGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterSecurityGroup');

}
1;