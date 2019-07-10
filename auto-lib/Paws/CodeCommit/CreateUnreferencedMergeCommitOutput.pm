
package Paws::CodeCommit::CreateUnreferencedMergeCommitOutput;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' );
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateUnreferencedMergeCommitOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The full commit ID of the commit that contains your merge results.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the merge results.


=head2 _request_id => Str


=cut

1;