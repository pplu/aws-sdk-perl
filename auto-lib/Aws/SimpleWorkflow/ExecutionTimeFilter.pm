package Aws::SimpleWorkflow::ExecutionTimeFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has latestDate => (is => 'ro', isa => 'Str');
  has oldestDate => (is => 'ro', isa => 'Str', required => 1);
}
1
