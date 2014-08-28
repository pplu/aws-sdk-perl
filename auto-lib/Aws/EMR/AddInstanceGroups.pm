
package Aws::EMR::AddInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::AddInstanceGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;