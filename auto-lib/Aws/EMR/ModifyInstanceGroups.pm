
package Aws::EMR::ModifyInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupModifyConfig]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
