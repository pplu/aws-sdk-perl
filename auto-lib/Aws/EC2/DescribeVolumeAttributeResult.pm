
package Aws::EC2::DescribeVolumeAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AutoEnableIO => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'autoEnableIO');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
1;