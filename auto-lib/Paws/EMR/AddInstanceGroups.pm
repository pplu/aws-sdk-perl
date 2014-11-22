
package Paws::EMR::AddInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::AddInstanceGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;