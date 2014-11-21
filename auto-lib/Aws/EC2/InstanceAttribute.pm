
package Aws::EC2::InstanceAttribute {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has DisableApiTermination => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'disableApiTermination');
  has EbsOptimized => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceInitiatedShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has RootDeviceName => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has UserData => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'userData');

}
1;