
package Paws::EC2::ImageAttribute;
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest',]);
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'description', traits => ['NameInRequest',]);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);
  has KernelId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'kernel', traits => ['NameInRequest',]);
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchPermission]', request_name => 'launchPermission', traits => ['NameInRequest',]);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest',]);
  has RamdiskId => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'ramdisk', traits => ['NameInRequest',]);
  has SriovNetSupport => (is => 'ro', isa => 'Paws::EC2::AttributeValue', request_name => 'sriovNetSupport', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageAttribute

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

One or more block device mapping entries.


=head2 Description => L<Paws::EC2::AttributeValue>

A description for the AMI.


=head2 ImageId => Str

The ID of the AMI.


=head2 KernelId => L<Paws::EC2::AttributeValue>

The kernel ID.


=head2 LaunchPermissions => ArrayRef[L<Paws::EC2::LaunchPermission>]

One or more launch permissions.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

One or more product codes.


=head2 RamdiskId => L<Paws::EC2::AttributeValue>

The RAM disk ID.


=head2 SriovNetSupport => L<Paws::EC2::AttributeValue>

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 _request_id => Str


=cut

