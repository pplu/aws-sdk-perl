
package Paws::ELB::DescribeTagsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::TagDescription]');

}
1;