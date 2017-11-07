package Paws::EC2::FpgaImage;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FpgaImageGlobalId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageGlobalId', traits => ['NameInRequest']);
  has FpgaImageId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OwnerAlias => (is => 'ro', isa => 'Str', request_name => 'ownerAlias', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PciId => (is => 'ro', isa => 'Paws::EC2::PciId', request_name => 'pciId', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
  has Public => (is => 'ro', isa => 'Bool', request_name => 'public', traits => ['NameInRequest']);
  has ShellVersion => (is => 'ro', isa => 'Str', request_name => 'shellVersion', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::EC2::FpgaImageState', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FpgaImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FpgaImage object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FpgaImage object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreateTime => Str

  The date and time the AFI was created.


=head2 Description => Str

  The description of the AFI.


=head2 FpgaImageGlobalId => Str

  The global FPGA image identifier (AGFI ID).


=head2 FpgaImageId => Str

  The FPGA image identifier (AFI ID).


=head2 Name => Str

  The name of the AFI.


=head2 OwnerAlias => Str

  The alias of the AFI owner. Possible values include C<self>, C<amazon>,
and C<aws-marketplace>.


=head2 OwnerId => Str

  The AWS account ID of the AFI owner.


=head2 PciId => L<Paws::EC2::PciId>

  Information about the PCI bus.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

  The product codes for the AFI.


=head2 Public => Bool

  Indicates whether the AFI is public.


=head2 ShellVersion => Str

  The version of the AWS Shell that was used to create the bitstream.


=head2 State => L<Paws::EC2::FpgaImageState>

  Information about the state of the AFI.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the AFI.


=head2 UpdateTime => Str

  The time of the most recent update to the AFI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
