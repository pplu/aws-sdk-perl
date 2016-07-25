
package Paws::EC2::InstanceAttribute;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]', xmlname => 'blockDeviceMapping', traits => ['Unwrapped',]);
  has DisableApiTermination => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', xmlname => 'disableApiTermination', traits => ['Unwrapped',]);
  has EbsOptimized => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', xmlname => 'ebsOptimized', traits => ['Unwrapped',]);
  has EnaSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', xmlname => 'enaSupport', traits => ['Unwrapped',]);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', xmlname => 'groupSet', traits => ['Unwrapped',]);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped',]);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'instanceInitiatedShutdownBehavior', traits => ['Unwrapped',]);
  has InstanceType => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'instanceType', traits => ['Unwrapped',]);
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'kernel', traits => ['Unwrapped',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', xmlname => 'productCodes', traits => ['Unwrapped',]);
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'ramdisk', traits => ['Unwrapped',]);
  has RootDeviceName => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'rootDeviceName', traits => ['Unwrapped',]);
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', xmlname => 'sourceDestCheck', traits => ['Unwrapped',]);
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'sriovNetSupport', traits => ['Unwrapped',]);
  has UserData => (is => 'ro', isa => 'Paws::EC2::AttributeValue', xmlname => 'userData', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceAttribute

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMapping>]

The block device mapping of the instance.



=head2 DisableApiTermination => L<Paws::EC2::AttributeBooleanValue>

If the value is C<true>, you can't terminate the instance through the
Amazon EC2 console, CLI, or API; otherwise, you can.



=head2 EbsOptimized => L<Paws::EC2::AttributeBooleanValue>

Indicates whether the instance is optimized for EBS I/O.



=head2 EnaSupport => L<Paws::EC2::AttributeBooleanValue>

Indicates whether enhanced networking with ENA is enabled.



=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

The security groups associated with the instance.



=head2 InstanceId => Str

The ID of the instance.



=head2 InstanceInitiatedShutdownBehavior => L<Paws::EC2::AttributeValue>

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).



=head2 InstanceType => L<Paws::EC2::AttributeValue>

The instance type.



=head2 KernelId => L<Paws::EC2::AttributeValue>

The kernel ID.



=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

A list of product codes.



=head2 RamdiskId => L<Paws::EC2::AttributeValue>

The RAM disk ID.



=head2 RootDeviceName => L<Paws::EC2::AttributeValue>

The name of the root device (for example, C</dev/sda1> or
C</dev/xvda>).



=head2 SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>

Indicates whether source/destination checking is enabled. A value of
C<true> means checking is enabled, and C<false> means checking is
disabled. This value must be C<false> for a NAT instance to perform
NAT.



=head2 SriovNetSupport => L<Paws::EC2::AttributeValue>

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.



=head2 UserData => L<Paws::EC2::AttributeValue>

The user data.




=cut

