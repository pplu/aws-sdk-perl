
package Paws::EC2::ExportImage;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw/EC2_ExportTaskS3LocationRequest/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DiskImageFormat => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has ImageId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, predicate => 1);
  has S3ExportLocation => (is => 'ro', isa => EC2_ExportTaskS3LocationRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ExportImage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::ExportImageResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ImageId' => 1,
                    'DiskImageFormat' => 1,
                    'S3ExportLocation' => 1
                  },
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'S3ExportLocation' => {
                                       'type' => 'EC2_ExportTaskS3LocationRequest',
                                       'class' => 'Paws::EC2::ExportTaskS3LocationRequest'
                                     },
               'ImageId' => {
                              'type' => 'Str'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DiskImageFormat' => {
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

Paws::EC2::ExportImage - Arguments for method ExportImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ExportImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ExportImageResult = $ec2->ExportImage(
      DiskImageFormat  => 'VMDK',
      ImageId          => 'MyImageId',
      S3ExportLocation => {
        S3Bucket => 'MyString',
        S3Prefix => 'MyString',
      },
      ClientToken => 'MyString',    # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      DryRun      => 1,             # OPTIONAL
      RoleName    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Description       = $ExportImageResult->Description;
    my $DiskImageFormat   = $ExportImageResult->DiskImageFormat;
    my $ExportImageTaskId = $ExportImageResult->ExportImageTaskId;
    my $ImageId           = $ExportImageResult->ImageId;
    my $Progress          = $ExportImageResult->Progress;
    my $RoleName          = $ExportImageResult->RoleName;
    my $S3ExportLocation  = $ExportImageResult->S3ExportLocation;
    my $Status            = $ExportImageResult->Status;
    my $StatusMessage     = $ExportImageResult->StatusMessage;

    # Returns a L<Paws::EC2::ExportImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ExportImage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Token to enable idempotency for export image requests.



=head2 Description => Str

A description of the image being exported. The maximum length is 255
bytes.



=head2 B<REQUIRED> DiskImageFormat => Str

The disk image format.

Valid values are: C<"VMDK">, C<"RAW">, C<"VHD">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

The ID of the image.



=head2 RoleName => Str

The name of the role that grants VM Import/Export permission to export
images to your S3 bucket. If this parameter is not specified, the
default role is named 'vmimport'.



=head2 B<REQUIRED> S3ExportLocation => EC2_ExportTaskS3LocationRequest

Information about the destination S3 bucket. The bucket must exist and
grant WRITE and READ_ACP permissions to the AWS account
vm-import-export@amazon.com.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

