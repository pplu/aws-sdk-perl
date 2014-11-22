
package Paws::EC2::DescribeTagsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagDescription]', traits => ['Unwrapped'], xmlname => 'tagSet');

}
1;