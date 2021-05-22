
package Paws::LexModelsV2::DeleteExportResponse;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId');
  has ExportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteExportResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

The unique identifier of the deleted export.


=head2 ExportStatus => Str

The current status of the deletion. When the deletion is complete, the
export will no longer be returned by the operation and calls to the
with the export identifier will fail.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 _request_id => Str


=cut

