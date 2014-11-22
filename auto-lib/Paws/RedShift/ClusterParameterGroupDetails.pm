
package Paws::RedShift::ClusterParameterGroupDetails {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Parameter]');

}
1;