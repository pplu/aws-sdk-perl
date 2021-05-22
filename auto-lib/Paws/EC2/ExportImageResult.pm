
package Paws::EC2::ExportImageResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest',]);
  has DiskImageFormat => (is => 'ro', isa => 'Str', request_name => 'diskImageFormat', traits => ['NameInRequest',]);
  has ExportImageTaskId => (is => 'ro', isa => 'Str', request_name => 'exportImageTaskId', traits => ['NameInRequest',]);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest',]);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest',]);
  has RoleName => (is => 'ro', isa => 'Str', request_name => 'roleName', traits => ['NameInRequest',]);
  has S3ExportLocation => (is => 'ro', isa => 'Paws::EC2::ExportTaskS3Location', request_name => 's3ExportLocation', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest',]);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest',]);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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
images to your Amazon S3 bucket.


=head2 S3ExportLocation => L<Paws::EC2::ExportTaskS3Location>

Information about the destination Amazon S3 bucket.


=head2 Status => Str

The status of the export image task. The possible values are C<active>,
C<completed>, C<deleting>, and C<deleted>.


=head2 StatusMessage => Str

The status message for the export image task.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the export image task.


=head2 _request_id => Str


=cut

