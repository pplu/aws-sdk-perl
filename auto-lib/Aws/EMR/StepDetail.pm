package Aws::EMR::StepDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Aws::EMR::StepConfig', required => 1);
}
1
