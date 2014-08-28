
package Aws::EMR::SetTerminationProtection {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTerminationProtection');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
