
package Paws::CloudFormation::DescribeStackEventsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackEvent]');

}
1;