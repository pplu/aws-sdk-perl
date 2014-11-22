
package Paws::EMR::ListBootstrapActionsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;