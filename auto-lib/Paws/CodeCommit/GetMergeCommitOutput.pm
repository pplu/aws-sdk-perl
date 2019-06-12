
package Paws::CodeCommit::GetMergeCommitOutput;
  use Moose;
  has BaseCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseCommitId' );
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' );
  has MergedCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergedCommitId' );
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeCommitOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 MergedCommitId => Str

The commit ID for the merge commit created when the source branch was
merged into the destination branch. If the fast-forward merge strategy
was used, no merge commit exists.


=head2 SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;