
package Paws::EC2::DescribeVolumesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Volume]', traits => ['Unwrapped'], xmlname => 'volumeSet');

}
1;