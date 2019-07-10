
package Paws::CodeCommit::BatchDescribeMergeConflictsOutput;
  use Moose;
  has BaseCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseCommitId' );
  has Conflicts => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Conflict]', traits => ['NameInRequest'], request_name => 'conflicts' , required => 1);
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' , required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::BatchDescribeMergeConflictsError]', traits => ['NameInRequest'], request_name => 'errors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchDescribeMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> Conflicts => ArrayRef[L<Paws::CodeCommit::Conflict>]

A list of conflicts for each file, including the conflict metadata and
the hunks of the differences between the files.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 Errors => ArrayRef[L<Paws::CodeCommit::BatchDescribeMergeConflictsError>]

A list of any errors returned while describing the merge conflicts for
each file.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;