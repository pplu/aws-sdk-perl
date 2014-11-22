
package Paws::OpsWorks::DescribeStacksResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Stacks => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Stack]');

}
1;