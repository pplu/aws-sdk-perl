
package Paws::CodeCommit::DescribeMergeConflictsOutput;
  use Moose;
  has BaseCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseCommitId' );
  has ConflictMetadata => (is => 'ro', isa => 'Paws::CodeCommit::ConflictMetadata', traits => ['NameInRequest'], request_name => 'conflictMetadata' , required => 1);
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' , required => 1);
  has MergeHunks => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::MergeHunk]', traits => ['NameInRequest'], request_name => 'mergeHunks' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribeMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> ConflictMetadata => L<Paws::CodeCommit::ConflictMetadata>

Contains metadata about the conflicts found in the merge.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> MergeHunks => ArrayRef[L<Paws::CodeCommit::MergeHunk>]

A list of merge hunks of the differences between the files or lines.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;