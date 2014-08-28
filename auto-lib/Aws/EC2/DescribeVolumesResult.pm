
package Aws::EC2::DescribeVolumesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Volume]', traits => ['Unwrapped'], xmlname => 'volumeSet');

}
1;