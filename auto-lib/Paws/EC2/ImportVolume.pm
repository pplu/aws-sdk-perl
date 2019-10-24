
package Paws::EC2::ImportVolume;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw/EC2_DiskImageDetail EC2_VolumeDetail/;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Image => (is => 'ro', isa => EC2_DiskImageDetail, required => 1, predicate => 1);
  has Volume => (is => 'ro', isa => EC2_VolumeDetail, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportVolume');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ImportVolumeResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'Volume' => {
                             'class' => 'Paws::EC2::VolumeDetail',
                             'type' => 'EC2_VolumeDetail'
                           },
               'Image' => {
                            'class' => 'Paws::EC2::DiskImageDetail',
                            'type' => 'EC2_DiskImageDetail'
                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'Volume' => 'volume',
                       'Image' => 'image',
                       'Description' => 'description',
                       'AvailabilityZone' => 'availabilityZone'
                     },
  'IsRequired' => {
                    'Volume' => 1,
                    'Image' => 1,
                    'AvailabilityZone' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportVolume - Arguments for method ImportVolume on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportVolume on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ImportVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportVolume.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ImportVolumeResult = $ec2->ImportVolume(
      AvailabilityZone => 'MyString',
      Image            => {
        Bytes             => 1,
        Format            => 'VMDK',       # values: VMDK, RAW, VHD
        ImportManifestUrl => 'MyString',

      },
      Volume => {
        Size => 1,

      },
      Description => 'MyString',           # OPTIONAL
      DryRun      => 1,                    # OPTIONAL
    );

    # Results:
    my $ConversionTask = $ImportVolumeResult->ConversionTask;

    # Returns a L<Paws::EC2::ImportVolumeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ImportVolume>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone for the resulting EBS volume.



=head2 Description => Str

A description of the volume.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Image => EC2_DiskImageDetail

The disk image.



=head2 B<REQUIRED> Volume => EC2_VolumeDetail

The volume size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

