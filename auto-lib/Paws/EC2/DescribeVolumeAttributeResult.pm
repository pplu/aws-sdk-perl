
package Paws::EC2::DescribeVolumeAttributeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AutoEnableIO => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'autoEnableIO');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
1;