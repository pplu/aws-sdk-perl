
package Paws::EC2::ExportImageResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ExportTaskS3Location/;
  has Description => (is => 'ro', isa => Str);
  has DiskImageFormat => (is => 'ro', isa => Str);
  has ExportImageTaskId => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has RoleName => (is => 'ro', isa => Str);
  has S3ExportLocation => (is => 'ro', isa => EC2_ExportTaskS3Location);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StatusMessage' => 'statusMessage',
                       'Description' => 'description',
                       'S3ExportLocation' => 's3ExportLocation',
                       'Progress' => 'progress',
                       'RoleName' => 'roleName',
                       'ExportImageTaskId' => 'exportImageTaskId',
                       'DiskImageFormat' => 'diskImageFormat',
                       'Status' => 'status',
                       'ImageId' => 'imageId'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'ExportImageTaskId' => {
                                        'type' => 'Str'
                                      },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Progress' => {
                               'type' => 'Str'
                             },
               'S3ExportLocation' => {
                                       'class' => 'Paws::EC2::ExportTaskS3Location',
                                       'type' => 'EC2_ExportTaskS3Location'
                                     },
               'ImageId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
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

Paws::EC2::ExportImageResult

=head1 ATTRIBUTES


=head2 Description => Str

A description of the image being exported.


=head2 DiskImageFormat => Str

The disk image format for the exported image.

Valid values are: C<"VMDK">, C<"RAW">, C<"VHD">
=head2 ExportImageTaskId => Str

The ID of the export image task.


=head2 ImageId => Str

The ID of the image.


=head2 Progress => Str

The percent complete of the export image task.


=head2 RoleName => Str

The name of the role that grants VM Import/Export permission to export
images to your S3 bucket.


=head2 S3ExportLocation => EC2_ExportTaskS3Location

Information about the destination S3 bucket.


=head2 Status => Str

The status of the export image task. The possible values are C<active>,
C<completed>, C<deleting>, and C<deleted>.


=head2 StatusMessage => Str

The status message for the export image task.


=head2 _request_id => Str


=cut

