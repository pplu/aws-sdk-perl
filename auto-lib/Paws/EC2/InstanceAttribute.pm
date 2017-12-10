
package Paws::EC2::InstanceAttribute;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest',]);
  has DisableApiTermination => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'disableApiTermination', traits => ['NameInRequest',]);
  has EbsOptimized => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'ebsOptimized', traits => ['NameInRequest',]);
  has EnaSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'enaSupport', traits => ['NameInRequest',]);
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'instanceInitiatedShutdownBehavior', traits => ['NameInRequest',]);
  has InstanceType => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'instanceType', traits => ['NameInRequest',]);
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'kernel', traits => ['NameInRequest',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest',]);
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'ramdisk', traits => ['NameInRequest',]);
  has RootDeviceName => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'rootDeviceName', traits => ['NameInRequest',]);
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'sourceDestCheck', traits => ['NameInRequest',]);
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'sriovNetSupport', traits => ['NameInRequest',]);
  has UserData => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'userData', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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

Indicates whether the instance is optimized for Amazon EBS I/O.


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

The device name of the root device volume (for example, C</dev/sda1>).


=head2 SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>

Indicates whether source/destination checking is enabled. A value of
C<true> means that checking is enabled, and C<false> means that
checking is disabled. This value must be C<false> for a NAT instance to
perform NAT.


=head2 SriovNetSupport => L<Paws::EC2::AttributeValue>

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 UserData => L<Paws::EC2::AttributeValue>

The user data.


=head2 _request_id => Str


=cut

