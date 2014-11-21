
package Aws::RedShift::ClustersMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Cluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;