package Paws::EC2::Image {
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Hypervisor => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has ImageLocation => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageLocation');
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerAlias');
  has ImageType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerId');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has Public => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'isPublic');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageState');
  has StateReason => (is => 'ro', isa => 'Paws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualizationType');
}
1;
