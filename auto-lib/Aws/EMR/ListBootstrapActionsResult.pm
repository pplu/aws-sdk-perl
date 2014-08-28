
package Aws::EMR::ListBootstrapActionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
