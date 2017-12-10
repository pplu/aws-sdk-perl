package Paws::EC2::Image;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EnaSupport => (is => 'ro', isa => 'Bool', request_name => 'enaSupport', traits => ['NameInRequest']);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has ImageLocation => (is => 'ro', isa => 'Str', request_name => 'imageLocation', traits => ['NameInRequest']);
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', request_name => 'imageOwnerAlias', traits => ['NameInRequest']);
  has ImageType => (is => 'ro', isa => 'Str', request_name => 'imageType', traits => ['NameInRequest']);
  has KernelId => (is => 'ro', isa => 'Str', request_name => 'kernelId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'imageOwnerId', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
  has Public => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has RamdiskId => (is => 'ro', isa => 'Str', request_name => 'ramdiskId', traits => ['NameInRequest']);
  has RootDeviceName => (is => 'ro', isa => 'Str', request_name => 'rootDeviceName', traits => ['NameInRequest']);
  has RootDeviceType => (is => 'ro', isa => 'Str', request_name => 'rootDeviceType', traits => ['NameInRequest']);
  has SriovNetSupport => (is => 'ro', isa => 'Str', request_name => 'sriovNetSupport', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'imageState', traits => ['NameInRequest']);
  has StateReason => (is => 'ro', isa => 'Paws::EC2::StateReason', request_name => 'stateReason', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VirtualizationType => (is => 'ro', isa => 'Str', request_name => 'virtualizationType', traits => ['NameInRequest']);
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


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

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

  The value is C<Windows> for Windows AMIs; otherwise blank.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

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


=head2 StateReason => L<Paws::EC2::StateReason>

  The reason for the state change.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the image.


=head2 VirtualizationType => Str

  The type of virtualization of the AMI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
