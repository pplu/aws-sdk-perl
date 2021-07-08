
package Paws::LexModelsV2::UpdateExportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId');
  has ExportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportStatus');
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ExportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateExportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time that the export was created.


=head2 ExportId => Str

The unique identifier Amazon Lex assigned to the export.


=head2 ExportStatus => Str

The status of the export. When the status is C<Completed> the export
archive is available for download.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 FileFormat => Str

The file format used for the files that define the resource.

Valid values are: C<"LexJson">
=head2 LastUpdatedDateTime => Str

The date and time that the export was last updated.


=head2 ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

A description of the type of resource that was exported, either a bot
or a bot locale.


=head2 _request_id => Str


=cut

