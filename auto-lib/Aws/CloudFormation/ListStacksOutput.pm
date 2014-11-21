
package Aws::CloudFormation::ListStacksOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackSummary]');

}
1;