
package Paws::CodeCommit::MergeBranchesBySquashOutput;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' );
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeBranchesBySquashOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The commit ID of the merge in the destination or target branch.


=head2 TreeId => Str

The tree ID of the merge in the destination or target branch.


=head2 _request_id => Str


=cut

1;