
package Paws::CloudFormation::ListStackResourcesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResourceSummary]');

}
1;