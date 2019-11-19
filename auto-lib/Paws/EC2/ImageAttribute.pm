
package Paws::EC2::ImageAttribute;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AttributeValue EC2_ProductCode EC2_BlockDeviceMapping EC2_LaunchPermission/;
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_BlockDeviceMapping]);
  has Description => (is => 'ro', isa => EC2_AttributeValue);
  has ImageId => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => EC2_AttributeValue);
  has LaunchPermissions => (is => 'ro', isa => ArrayRef[EC2_LaunchPermission]);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has RamdiskId => (is => 'ro', isa => EC2_AttributeValue);
  has SriovNetSupport => (is => 'ro', isa => EC2_AttributeValue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RamdiskId' => 'ramdisk',
                       'Description' => 'description',
                       'ProductCodes' => 'productCodes',
                       'LaunchPermissions' => 'launchPermission',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'ImageId' => 'imageId',
                       'KernelId' => 'kernel'
                     },
  'types' => {
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::BlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]'
                                        },
               'ImageId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KernelId' => {
                               'class' => 'Paws::EC2::AttributeValue',
                               'type' => 'EC2_AttributeValue'
                             },
               'RamdiskId' => {
                                'class' => 'Paws::EC2::AttributeValue',
                                'type' => 'EC2_AttributeValue'
                              },
               'Description' => {
                                  'class' => 'Paws::EC2::AttributeValue',
                                  'type' => 'EC2_AttributeValue'
                                },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'LaunchPermissions' => {
                                        'class' => 'Paws::EC2::LaunchPermission',
                                        'type' => 'ArrayRef[EC2_LaunchPermission]'
                                      },
               'SriovNetSupport' => {
                                      'class' => 'Paws::EC2::AttributeValue',
                                      'type' => 'EC2_AttributeValue'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageAttribute

=head1 ATTRIBUTES


=head2 BlockDeviceMappings => ArrayRef[EC2_BlockDeviceMapping]

The block device mapping entries.


=head2 Description => EC2_AttributeValue

A description for the AMI.


=head2 ImageId => Str

The ID of the AMI.


=head2 KernelId => EC2_AttributeValue

The kernel ID.


=head2 LaunchPermissions => ArrayRef[EC2_LaunchPermission]

The launch permissions.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

The product codes.


=head2 RamdiskId => EC2_AttributeValue

The RAM disk ID.


=head2 SriovNetSupport => EC2_AttributeValue

Indicates whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 _request_id => Str


=cut

