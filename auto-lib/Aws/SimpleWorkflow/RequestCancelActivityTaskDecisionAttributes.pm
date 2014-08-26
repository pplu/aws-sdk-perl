package Aws::SimpleWorkflow::RequestCancelActivityTaskDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has activityId => (is => 'ro', isa => 'Str', required => 1);
}
1
