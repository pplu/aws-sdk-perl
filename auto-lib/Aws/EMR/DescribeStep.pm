
package Aws::EMR::DescribeStep {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has StepId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStep');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeStepResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
