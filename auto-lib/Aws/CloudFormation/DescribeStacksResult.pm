
package Aws::CloudFormation::DescribeStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Stack]');

}
1;