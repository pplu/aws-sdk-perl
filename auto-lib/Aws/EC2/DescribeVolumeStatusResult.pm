
package Aws::EC2::DescribeVolumeStatusResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusItem]', traits => ['Unwrapped'], xmlname => 'volumeStatusSet');

}
1;