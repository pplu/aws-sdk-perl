package Aws::SimpleWorkflow::RecordMarkerDecisionAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has details => (is => 'ro', isa => 'Str');
  has markerName => (is => 'ro', isa => 'Str', required => 1);
}
1
