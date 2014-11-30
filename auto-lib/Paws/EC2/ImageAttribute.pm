
package Paws::EC2::ImageAttribute {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => 'launchPermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageAttribute

=head1 ATTRIBUTES

=head2 BlockDeviceMappings => ArrayRef[Paws::EC2::BlockDeviceMapping]

  

One or more block device mapping entries.









=head2 Description => Paws::EC2::AttributeValue

  

A description for the AMI.









=head2 ImageId => Str

  

The ID of the AMI.









=head2 KernelId => Paws::EC2::AttributeValue

  

The kernel ID.









=head2 LaunchPermissions => ArrayRef[Paws::EC2::LaunchPermission]

  

One or more launch permissions.









=head2 ProductCodes => ArrayRef[Paws::EC2::ProductCode]

  

One or more product codes.









=head2 RamdiskId => Paws::EC2::AttributeValue

  

The RAM disk ID.









=head2 SriovNetSupport => Paws::EC2::AttributeValue

  


=cut

