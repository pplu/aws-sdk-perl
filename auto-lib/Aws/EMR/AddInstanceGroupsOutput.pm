
package Aws::EMR::AddInstanceGroupsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowId => (is => 'ro', isa => 'Str');

}
1;