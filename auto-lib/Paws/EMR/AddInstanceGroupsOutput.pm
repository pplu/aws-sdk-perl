
package Paws::EMR::AddInstanceGroupsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowId => (is => 'ro', isa => 'Str');

}
1;