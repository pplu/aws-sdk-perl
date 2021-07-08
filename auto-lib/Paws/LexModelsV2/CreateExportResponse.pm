
package Paws::LexModelsV2::CreateExportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId');
  has ExportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportStatus');
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ExportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateExportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time that the request to export a bot was created.


=head2 ExportId => Str

An identifier for a specific request to create an export.


=head2 ExportStatus => Str

The status of the export. When the status is C<Completed>, you can use
the operation to get the pre-signed S3 URL link to your exported bot or
bot locale.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 FileFormat => Str

The file format used for the bot or bot locale definition files.

Valid values are: C<"LexJson">
=head2 ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

A description of the type of resource that was exported, either a bot
or a bot locale.


=head2 _request_id => Str


=cut

