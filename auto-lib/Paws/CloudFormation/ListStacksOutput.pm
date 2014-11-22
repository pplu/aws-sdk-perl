
package Paws::CloudFormation::ListStacksOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackSummary]');

}
1;