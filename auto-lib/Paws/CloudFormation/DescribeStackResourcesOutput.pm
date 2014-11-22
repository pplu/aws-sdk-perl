
package Paws::CloudFormation::DescribeStackResourcesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResource]');

}
1;