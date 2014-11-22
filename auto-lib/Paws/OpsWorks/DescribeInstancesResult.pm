
package Paws::OpsWorks::DescribeInstancesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Instance]');

}
1;