
package Paws::CodeCommit::GetMergeConflictsOutput;
  use Moose;
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' , required => 1);
  has Mergeable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'mergeable' , required => 1);
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeConflictsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> Mergeable => Bool

A Boolean value that indicates whether the code is mergable by the
specified merge option.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;