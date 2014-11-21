
package Aws::CloudFormation::DescribeStackResourcesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackResources => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResource]');

}
1;