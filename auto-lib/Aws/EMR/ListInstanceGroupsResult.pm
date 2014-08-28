
package Aws::EMR::ListInstanceGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;
