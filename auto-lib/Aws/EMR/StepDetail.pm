package Aws::EMR::StepDetail {
  use Moose;
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Aws::EMR::StepConfig', required => 1);
}
1;
