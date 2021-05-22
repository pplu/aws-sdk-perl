
package Paws::LexModelsV2::DeleteImportResponse;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has ImportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteImportResponse

=head1 ATTRIBUTES


=head2 ImportId => Str

The unique identifier of the deleted import.


=head2 ImportStatus => Str

The current status of the deletion. When the deletion is complete, the
import will no longer be returned by the operation and calls to the
with the import identifier will fail.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 _request_id => Str


=cut

