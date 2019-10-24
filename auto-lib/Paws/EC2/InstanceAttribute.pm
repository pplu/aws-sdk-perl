
package Paws::EC2::InstanceAttribute;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_GroupIdentifier EC2_InstanceBlockDeviceMapping EC2_ProductCode EC2_AttributeValue EC2_AttributeBooleanValue/;
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_InstanceBlockDeviceMapping]);
  has DisableApiTermination => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has EbsOptimized => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has EnaSupport => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has Groups => (is => 'ro', isa => ArrayRef[EC2_GroupIdentifier]);
  has InstanceId => (is => 'ro', isa => Str);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => EC2_AttributeValue);
  has InstanceType => (is => 'ro', isa => EC2_AttributeValue);
  has KernelId => (is => 'ro', isa => EC2_AttributeValue);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has RamdiskId => (is => 'ro', isa => EC2_AttributeValue);
  has RootDeviceName => (is => 'ro', isa => EC2_AttributeValue);
  has SourceDestCheck => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has SriovNetSupport => (is => 'ro', isa => EC2_AttributeValue);
  has UserData => (is => 'ro', isa => EC2_AttributeValue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::EC2::GroupIdentifier',
                             'type' => 'ArrayRef[EC2_GroupIdentifier]'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'KernelId' => {
                               'class' => 'Paws::EC2::AttributeValue',
                               'type' => 'EC2_AttributeValue'
                             },
               'SourceDestCheck' => {
                                      'class' => 'Paws::EC2::AttributeBooleanValue',
                                      'type' => 'EC2_AttributeBooleanValue'
                                    },
               'DisableApiTermination' => {
                                            'class' => 'Paws::EC2::AttributeBooleanValue',
                                            'type' => 'EC2_AttributeBooleanValue'
                                          },
               'SriovNetSupport' => {
                                      'class' => 'Paws::EC2::AttributeValue',
                                      'type' => 'EC2_AttributeValue'
                                    },
               'EnaSupport' => {
                                 'class' => 'Paws::EC2::AttributeBooleanValue',
                                 'type' => 'EC2_AttributeBooleanValue'
                               },
               'InstanceInitiatedShutdownBehavior' => {
                                                        'class' => 'Paws::EC2::AttributeValue',
                                                        'type' => 'EC2_AttributeValue'
                                                      },
               'EbsOptimized' => {
                                   'class' => 'Paws::EC2::AttributeBooleanValue',
                                   'type' => 'EC2_AttributeBooleanValue'
                                 },
               'InstanceType' => {
                                   'class' => 'Paws::EC2::AttributeValue',
                                   'type' => 'EC2_AttributeValue'
                                 },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'RootDeviceName' => {
                                     'class' => 'Paws::EC2::AttributeValue',
                                     'type' => 'EC2_AttributeValue'
                                   },
               'UserData' => {
                               'class' => 'Paws::EC2::AttributeValue',
                               'type' => 'EC2_AttributeValue'
                             },
               'RamdiskId' => {
                                'class' => 'Paws::EC2::AttributeValue',
                                'type' => 'EC2_AttributeValue'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::InstanceBlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_InstanceBlockDeviceMapping]'
                                        }
             },
  'NameInRequest' => {
                       'Groups' => 'groupSet',
                       'InstanceId' => 'instanceId',
                       'ProductCodes' => 'productCodes',
                       'InstanceType' => 'instanceType',
                       'EbsOptimized' => 'ebsOptimized',
                       'RootDeviceName' => 'rootDeviceName',
                       'UserData' => 'userData',
                       'KernelId' => 'kernel',
                       'SourceDestCheck' => 'sourceDestCheck',
                       'DisableApiTermination' => 'disableApiTermination',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'RamdiskId' => 'ramdisk',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'EnaSupport' => 'enaSupport',
                       'InstanceInitiatedShutdownBehavior' => 'instanceInitiatedShutdownBehavior'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceAttribute

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[EC2_InstanceBlockDeviceMapping]

The block device mapping of the instance.


=head2 DisableApiTermination => EC2_AttributeBooleanValue

If the value is C<true>, you can't terminate the instance through the
Amazon EC2 console, CLI, or API; otherwise, you can.


=head2 EbsOptimized => EC2_AttributeBooleanValue

Indicates whether the instance is optimized for Amazon EBS I/O.


=head2 EnaSupport => EC2_AttributeBooleanValue

Indicates whether enhanced networking with ENA is enabled.


=head2 Groups => ArrayRef[EC2_GroupIdentifier]

The security groups associated with the instance.


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceInitiatedShutdownBehavior => EC2_AttributeValue

Indicates whether an instance stops or terminates when you initiate
shutdown from the instance (using the operating system command for
system shutdown).


=head2 InstanceType => EC2_AttributeValue

The instance type.


=head2 KernelId => EC2_AttributeValue

The kernel ID.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

A list of product codes.


=head2 RamdiskId => EC2_AttributeValue

The RAM disk ID.


=head2 RootDeviceName => EC2_AttributeValue

The device name of the root device volume (for example, C</dev/sda1>).


=head2 SourceDestCheck => EC2_AttributeBooleanValue

Indicates whether source/destination checking is enabled. A value of
C<true> means that checking is enabled, and C<false> means that
checking is disabled. This value must be C<false> for a NAT instance to
perform NAT.


=head2 SriovNetSupport => EC2_AttributeValue

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 UserData => EC2_AttributeValue

The user data.


=head2 _request_id => Str


=cut

