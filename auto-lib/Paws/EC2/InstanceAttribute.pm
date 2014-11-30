
package Paws::EC2::InstanceAttribute {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has DisableApiTermination => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'disableApiTermination');
  has EbsOptimized => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceInitiatedShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has RootDeviceName => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has UserData => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'userData');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceAttribute

=head1 ATTRIBUTES

=head2 BlockDeviceMappings => ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]

  

The block device mapping of the instance.









=head2 DisableApiTermination => Paws::EC2::AttributeBooleanValue

  

If the value is C<true>, you can't terminate the instance through the
Amazon EC2 console, CLI, or API; otherwise, you can.









=head2 EbsOptimized => Paws::EC2::AttributeBooleanValue

  

Indicates whether the instance is optimized for EBS I/O.









=head2 Groups => ArrayRef[Paws::EC2::GroupIdentifier]

  

The security groups associated with the instance.









=head2 InstanceId => Str

  

The ID of the instance.









=head2 InstanceInitiatedShutdownBehavior => Paws::EC2::AttributeValue

  

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).









=head2 InstanceType => Paws::EC2::AttributeValue

  

The instance type.









=head2 KernelId => Paws::EC2::AttributeValue

  

The kernel ID.









=head2 ProductCodes => ArrayRef[Paws::EC2::ProductCode]

  

A list of product codes.









=head2 RamdiskId => Paws::EC2::AttributeValue

  

The RAM disk ID.









=head2 RootDeviceName => Paws::EC2::AttributeValue

  

The name of the root device (for example, C</dev/sda1>).









=head2 SourceDestCheck => Paws::EC2::AttributeBooleanValue

  

Indicates whether source/destination checking is enabled. A value of
C<true> means checking is enabled, and C<false> means checking is
disabled. This value must be C<false> for a NAT instance to perform
NAT.









=head2 SriovNetSupport => Paws::EC2::AttributeValue

  
=head2 UserData => Paws::EC2::AttributeValue

  

The Base64-encoded MIME user data.











=cut

