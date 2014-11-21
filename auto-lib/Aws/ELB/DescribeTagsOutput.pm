
package Aws::ELB::DescribeTagsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagDescription]');

}
1;