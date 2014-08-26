package Aws::SimpleWorkflow::TagFilter {
  use Moose;
  with ('AWS::API::ResultParser');
  has tag => (is => 'ro', isa => 'Str', required => 1);
}
1
