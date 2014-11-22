
package Paws::CloudFormation::DescribeStackResourceOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackResourceDetail => (is => 'ro', isa => 'Paws::CloudFormation::StackResourceDetail');

}
1;