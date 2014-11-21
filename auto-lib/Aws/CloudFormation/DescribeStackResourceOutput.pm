
package Aws::CloudFormation::DescribeStackResourceOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackResourceDetail => (is => 'ro', isa => 'Aws::CloudFormation::StackResourceDetail');

}
1;