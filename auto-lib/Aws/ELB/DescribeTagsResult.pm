
package Aws::ELB::DescribeTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagDescription]');

}
1;