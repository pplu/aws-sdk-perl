
package Aws::RedShift::ClusterVersionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;