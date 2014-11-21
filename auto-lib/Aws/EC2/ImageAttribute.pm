
package Aws::EC2::ImageAttribute {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has KernelId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => 'launchPermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');

}
1;