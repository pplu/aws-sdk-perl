package Aws::SimpleWorkflow::TaskList {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
}
1
