
package Paws::CloudFormation::DescribeStacksOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Stack]');

}
1;