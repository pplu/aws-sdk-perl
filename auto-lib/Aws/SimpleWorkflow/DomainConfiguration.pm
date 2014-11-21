package Aws::SimpleWorkflow::DomainConfiguration {
  use Moose;
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}
1;
