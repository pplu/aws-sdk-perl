package Aws::SimpleWorkflow::ActivityType {
  use Moose;
  with ('AWS::API::ResultParser');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);
}
1
