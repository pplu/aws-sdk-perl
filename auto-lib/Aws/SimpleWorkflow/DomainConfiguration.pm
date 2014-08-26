package Aws::SimpleWorkflow::DomainConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has workflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', required => 1);
}
1
