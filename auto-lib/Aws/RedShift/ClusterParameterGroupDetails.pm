
package Aws::RedShift::ClusterParameterGroupDetails {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');

}
1;