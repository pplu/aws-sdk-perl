
package Paws::RedShift::ClusterSecurityGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;