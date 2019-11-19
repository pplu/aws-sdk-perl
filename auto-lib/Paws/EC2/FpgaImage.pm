package Paws::EC2::FpgaImage;
  use Moo;  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_Tag EC2_FpgaImageState EC2_ProductCode EC2_PciId/;
  has CreateTime => (is => 'ro', isa => Str);
  has DataRetentionSupport => (is => 'ro', isa => Bool);
  has Description => (is => 'ro', isa => Str);
  has FpgaImageGlobalId => (is => 'ro', isa => Str);
  has FpgaImageId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OwnerAlias => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has PciId => (is => 'ro', isa => EC2_PciId);
  has ProductCodes => (is => 'ro', isa => ArrayRef[EC2_ProductCode]);
  has Public => (is => 'ro', isa => Bool);
  has ShellVersion => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => EC2_FpgaImageState);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has UpdateTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OwnerId' => 'ownerId',
                       'ShellVersion' => 'shellVersion',
                       'Tags' => 'tags',
                       'Public' => 'public',
                       'FpgaImageId' => 'fpgaImageId',
                       'CreateTime' => 'createTime',
                       'UpdateTime' => 'updateTime',
                       'ProductCodes' => 'productCodes',
                       'Description' => 'description',
                       'State' => 'state',
                       'Name' => 'name',
                       'FpgaImageGlobalId' => 'fpgaImageGlobalId',
                       'OwnerAlias' => 'ownerAlias',
                       'PciId' => 'pciId',
                       'DataRetentionSupport' => 'dataRetentionSupport'
                     },
  'types' => {
               'DataRetentionSupport' => {
                                           'type' => 'Bool'
                                         },
               'PciId' => {
                            'class' => 'Paws::EC2::PciId',
                            'type' => 'EC2_PciId'
                          },
               'OwnerAlias' => {
                                 'type' => 'Str'
                               },
               'State' => {
                            'type' => 'EC2_FpgaImageState',
                            'class' => 'Paws::EC2::FpgaImageState'
                          },
               'FpgaImageGlobalId' => {
                                        'type' => 'Str'
                                      },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ProductCodes' => {
                                   'type' => 'ArrayRef[EC2_ProductCode]',
                                   'class' => 'Paws::EC2::ProductCode'
                                 },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'ShellVersion' => {
                                   'type' => 'Str'
                                 },
               'FpgaImageId' => {
                                  'type' => 'Str'
                                },
               'Public' => {
                             'type' => 'Bool'
                           },
               'OwnerId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

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


=head2 DataRetentionSupport => Bool

  Indicates whether data retention support is enabled for the AFI.


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


=head2 PciId => EC2_PciId

  Information about the PCI bus.


=head2 ProductCodes => ArrayRef[EC2_ProductCode]

  The product codes for the AFI.


=head2 Public => Bool

  Indicates whether the AFI is public.


=head2 ShellVersion => Str

  The version of the AWS Shell that was used to create the bitstream.


=head2 State => EC2_FpgaImageState

  Information about the state of the AFI.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the AFI.


=head2 UpdateTime => Str

  The time of the most recent update to the AFI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
