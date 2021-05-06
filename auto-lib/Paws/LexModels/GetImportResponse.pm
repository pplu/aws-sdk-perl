
package Paws::LexModels::GetImportResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has FailureReason => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReason');
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has ImportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStatus');
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetImportResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

A timestamp for the date and time that the import job was created.


=head2 FailureReason => ArrayRef[Str|Undef]

A string that describes why an import job failed to complete.


=head2 ImportId => Str

The identifier for the specific import job.


=head2 ImportStatus => Str

The status of the import job. If the status is C<FAILED>, you can get
the reason for the failure from the C<failureReason> field.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">
=head2 MergeStrategy => Str

The action taken when there was a conflict between an existing resource
and a resource in the import file.

Valid values are: C<"OVERWRITE_LATEST">, C<"FAIL_ON_CONFLICT">
=head2 Name => Str

The name given to the import job.


=head2 ResourceType => Str

The type of resource imported.

Valid values are: C<"BOT">, C<"INTENT">, C<"SLOT_TYPE">
=head2 _request_id => Str


=cut

