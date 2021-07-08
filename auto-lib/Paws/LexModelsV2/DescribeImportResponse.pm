
package Paws::LexModelsV2::DescribeImportResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has ImportedResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedResourceId');
  has ImportedResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importedResourceName');
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId');
  has ImportStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importStatus');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ImportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeImportResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The date and time that the import was created.


=head2 FailureReasons => ArrayRef[Str|Undef]

If the C<importStatus> field is C<Failed>, this provides one or more
reasons for the failture.


=head2 ImportedResourceId => Str

The unique identifier that Amazon Lex assigned to the resource created
by the import.


=head2 ImportedResourceName => Str

The name of the imported resource.


=head2 ImportId => Str

The unique identifier of the described import.


=head2 ImportStatus => Str

The status of the import process. When the status is C<Completed> the
resource is imported and ready for use.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 LastUpdatedDateTime => Str

The date and time that the import was last updated.


=head2 MergeStrategy => Str

The strategy used when there was a name conflict between the imported
resource and an existing resource. When the merge strategy is
C<FailOnConflict> existing resources are not overwritten and the import
fails.

Valid values are: C<"Overwrite">, C<"FailOnConflict">
=head2 ResourceSpecification => L<Paws::LexModelsV2::ImportResourceSpecification>

The specifications of the imported bot or bot locale.


=head2 _request_id => Str


=cut

