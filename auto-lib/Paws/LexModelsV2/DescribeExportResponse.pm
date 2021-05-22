
package Paws::LexModelsV2::DescribeExportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has DownloadUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'downloadUrl');
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId');
  has ExportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportStatus');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ExportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeExportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time that the export was created.


=head2 DownloadUrl => Str

A pre-signed S3 URL that points to the bot or bot locale archive. The
URL is only available for 5 minutes after calling the C<DescribeExport>
operation.


=head2 ExportId => Str

The unique identifier of the described export.


=head2 ExportStatus => Str

The status of the export. When the status is C<Complete> the export
archive file is available for download.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 FailureReasons => ArrayRef[Str|Undef]

If the C<exportStatus> is failed, contains one or more reasons why the
export could not be completed.


=head2 FileFormat => Str

The file format used in the files that describe the bot or bot locale.

Valid values are: C<"LexJson">
=head2 LastUpdatedDateTime => Str

The last date and time that the export was updated.


=head2 ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

The bot, bot ID, and optional locale ID of the exported bot or bot
locale.


=head2 _request_id => Str


=cut

