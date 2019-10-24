
package Paws::EC2::ImageAttribute;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ProductCode EC2_LaunchPermission EC2_AttributeValue EC2_BlockDeviceMapping/;
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
  'types' => {
               'ImageId' => {
                              'type' => 'Str'
                            },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'KernelId' => {
                               'class' => 'Paws::EC2::AttributeValue',
                               'type' => 'EC2_AttributeValue'
                             },
               'LaunchPermissions' => {
                                        'class' => 'Paws::EC2::LaunchPermission',
                                        'type' => 'ArrayRef[EC2_LaunchPermission]'
                                      },
               'SriovNetSupport' => {
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
                                          'class' => 'Paws::EC2::BlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]'
                                        },
               'Description' => {
                                  'class' => 'Paws::EC2::AttributeValue',
                                  'type' => 'EC2_AttributeValue'
                                }
             },
  'NameInRequest' => {
                       'ImageId' => 'imageId',
                       'ProductCodes' => 'productCodes',
                       'KernelId' => 'kernel',
                       'LaunchPermissions' => 'launchPermission',
                       'RamdiskId' => 'ramdisk',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'Description' => 'description'
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

