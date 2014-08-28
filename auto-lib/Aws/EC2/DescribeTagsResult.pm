
package Aws::EC2::DescribeTagsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::TagDescription]', traits => ['Unwrapped'], xmlname => 'tagSet');

}
1;