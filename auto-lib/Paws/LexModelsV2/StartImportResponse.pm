
package Paws::LexModelsV2::StartImportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has ImportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStatus');
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ImportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartImportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time that the import request was created.


=head2 ImportId => Str

A unique identifier for the import.


=head2 ImportStatus => Str

The current status of the import. When the status is C<Complete> the
bot or bot alias is ready to use.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 MergeStrategy => Str

The strategy used when there was a name conflict between the imported
resource and an existing resource. When the merge strategy is
C<FailOnConflict> existing resources are not overwritten and the import
fails.

Valid values are: C<"Overwrite">, C<"FailOnConflict">
=head2 ResourceSpecification => L<Paws::LexModelsV2::ImportResourceSpecification>

The parameters used when importing the bot or bot locale.


=head2 _request_id => Str


=cut

