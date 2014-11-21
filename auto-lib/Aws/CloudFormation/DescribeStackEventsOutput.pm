
package Aws::CloudFormation::DescribeStackEventsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackEvent]');

}
1;