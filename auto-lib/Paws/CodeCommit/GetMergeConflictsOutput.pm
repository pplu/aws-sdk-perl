
package Paws::CodeCommit::GetMergeConflictsOutput;
  use Moose;
  has BaseCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseCommitId' );
  has ConflictMetadataList => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::ConflictMetadata]', traits => ['NameInRequest'], request_name => 'conflictMetadataList' , required => 1);
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' , required => 1);
  has Mergeable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'mergeable' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> ConflictMetadataList => ArrayRef[L<Paws::CodeCommit::ConflictMetadata>]

A list of metadata for any conflicting files. If the specified merge
strategy is FAST_FORWARD_MERGE, this list is always empty.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> Mergeable => Bool

A Boolean value that indicates whether the code is mergeable by the
specified merge option.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;