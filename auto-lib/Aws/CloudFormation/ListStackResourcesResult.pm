
package Aws::CloudFormation::ListStackResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResourceSummary]');

}
1;