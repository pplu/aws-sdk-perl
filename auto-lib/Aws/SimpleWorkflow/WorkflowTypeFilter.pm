package Aws::SimpleWorkflow::WorkflowTypeFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');
}
1
