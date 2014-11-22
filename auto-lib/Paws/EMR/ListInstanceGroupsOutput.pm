
package Paws::EMR::ListInstanceGroupsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;