package Aws::SimpleWorkflow::TagFilter {
  use Moose;
  has tag => (is => 'ro', isa => 'Str', required => 1);
}
1
