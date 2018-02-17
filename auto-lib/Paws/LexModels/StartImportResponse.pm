
package Paws::LexModels::StartImportResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has ImportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStatus');
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::StartImportResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

A timestamp for the date and time that the import job was requested.


=head2 ImportId => Str

The identifier for the specific import job.


=head2 ImportStatus => Str

The status of the import job. If the status is C<FAILED>, you can get
the reason for the failure using the C<GetImport> operation.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">
=head2 MergeStrategy => Str

The action to take when there is a merge conflict.

Valid values are: C<"OVERWRITE_LATEST">, C<"FAIL_ON_CONFLICT">
=head2 Name => Str

The name given to the import job.


=head2 ResourceType => Str

The type of resource to import.

Valid values are: C<"BOT">, C<"INTENT">, C<"SLOT_TYPE">
=head2 _request_id => Str


=cut

