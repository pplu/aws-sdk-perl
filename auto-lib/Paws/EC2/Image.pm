package Paws::EC2::Image;
  use Moo;  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_ProductCode EC2_Tag EC2_StateReason EC2_BlockDeviceMapping/;
  has Architecture => (is => 'ro', isa => Str);
  has BlockDeviceMappings => (is => 'ro', isa => ArrayRef[EC2_BlockDeviceMapping]);
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EnaSupport => (is => 'ro', isa => Bool);
  has Hypervisor => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has ImageLocation => (is => 'ro', isa => Str);
  has ImageOwnerAlias => (is => 'ro', isa => Str);
  has ImageType => (is => 'ro', isa => Str);
  has KernelId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has Public => (is => 'ro', isa => Bool);
  has RamdiskId => (is => 'ro', isa => Str);
  has RootDeviceName => (is => 'ro', isa => Str);
  has RootDeviceType => (is => 'ro', isa => Str);
  has SriovNetSupport => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has StateReason => (is => 'ro', isa => EC2_StateReason);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VirtualizationType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageId' => {
                              'type' => 'Str'
                            },
               'Public' => {
                             'type' => 'Bool'
                           },
               'Platform' => {
                               'type' => 'Str'
                             },
               'VirtualizationType' => {
                                         'type' => 'Str'
                                       },
               'State' => {
                            'type' => 'Str'
                          },
               'StateReason' => {
                                  'class' => 'Paws::EC2::StateReason',
                                  'type' => 'EC2_StateReason'
                                },
               'KernelId' => {
                               'type' => 'Str'
                             },
               'SriovNetSupport' => {
                                      'type' => 'Str'
                                    },
               'Hypervisor' => {
                                 'type' => 'Str'
                               },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'EnaSupport' => {
                                 'type' => 'Bool'
                               },
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'ProductCodes' => {
                                   'class' => 'Paws::EC2::ProductCode',
                                   'type' => 'ArrayRef[EC2_ProductCode]'
                                 },
               'RootDeviceName' => {
                                     'type' => 'Str'
                                   },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'ImageOwnerAlias' => {
                                      'type' => 'Str'
                                    },
               'RootDeviceType' => {
                                     'type' => 'Str'
                                   },
               'RamdiskId' => {
                                'type' => 'Str'
                              },
               'ImageType' => {
                                'type' => 'Str'
                              },
               'BlockDeviceMappings' => {
                                          'class' => 'Paws::EC2::BlockDeviceMapping',
                                          'type' => 'ArrayRef[EC2_BlockDeviceMapping]'
                                        },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'ImageLocation' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ImageId' => 'imageId',
                       'Public' => 'isPublic',
                       'Platform' => 'platform',
                       'VirtualizationType' => 'virtualizationType',
                       'State' => 'imageState',
                       'StateReason' => 'stateReason',
                       'KernelId' => 'kernelId',
                       'SriovNetSupport' => 'sriovNetSupport',
                       'Hypervisor' => 'hypervisor',
                       'CreationDate' => 'creationDate',
                       'EnaSupport' => 'enaSupport',
                       'Architecture' => 'architecture',
                       'ProductCodes' => 'productCodes',
                       'RootDeviceName' => 'rootDeviceName',
                       'OwnerId' => 'imageOwnerId',
                       'ImageOwnerAlias' => 'imageOwnerAlias',
                       'RootDeviceType' => 'rootDeviceType',
                       'RamdiskId' => 'ramdiskId',
                       'ImageType' => 'imageType',
                       'BlockDeviceMappings' => 'blockDeviceMapping',
                       'Tags' => 'tagSet',
                       'ImageLocation' => 'imageLocation',
                       'Description' => 'description',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Image object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., VirtualizationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Architecture => Str

  The architecture of the image.


=head2 BlockDeviceMappings => ArrayRef[EC2_BlockDeviceMapping]

  Any block device mapping entries.


=head2 CreationDate => Str

  The date and time the image was created.


=head2 Description => Str

  The description of the AMI that was provided during image creation.


=head2 EnaSupport => Bool

  Specifies whether enhanced networking with ENA is enabled.


=head2 Hypervisor => Str

  The hypervisor type of the image.


=head2 ImageId => Str

  The ID of the AMI.


=head2 ImageLocation => Str

  The location of the AMI.


=head2 ImageOwnerAlias => Str

  The AWS account alias (for example, C<amazon>, C<self>) or the AWS
account ID of the AMI owner.


=head2 ImageType => Str

  The type of image.


=head2 KernelId => Str

  The kernel associated with the image, if any. Only applicable for
machine images.


=head2 Name => Str

  The name of the AMI that was provided during image creation.


=head2 OwnerId => Str

  The AWS account ID of the image owner.


=head2 Platform => Str

  This value is set for Windows AMIs; otherwise, it is blank.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

  Any product codes associated with the AMI.


=head2 Public => Bool

  Indicates whether the image has public launch permissions. The value is
C<true> if this image has public launch permissions or C<false> if it
has only implicit and explicit launch permissions.


=head2 RamdiskId => Str

  The RAM disk associated with the image, if any. Only applicable for
machine images.


=head2 RootDeviceName => Str

  The device name of the root device volume (for example, C</dev/sda1>).


=head2 RootDeviceType => Str

  The type of root device used by the AMI. The AMI can use an EBS volume
or an instance store volume.


=head2 SriovNetSupport => Str

  Specifies whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 State => Str

  The current state of the AMI. If the state is C<available>, the image
is successfully registered and can be used to launch an instance.


=head2 StateReason => EC2_StateReason

  The reason for the state change.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the image.


=head2 VirtualizationType => Str

  The type of virtualization of the AMI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
