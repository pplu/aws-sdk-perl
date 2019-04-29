
package Paws::CodeCommit::CreateCommitOutput;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' );
  has FilesAdded => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::FileMetadata]', traits => ['NameInRequest'], request_name => 'filesAdded' );
  has FilesDeleted => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::FileMetadata]', traits => ['NameInRequest'], request_name => 'filesDeleted' );
  has FilesUpdated => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::FileMetadata]', traits => ['NameInRequest'], request_name => 'filesUpdated' );
  has TreeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treeId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateCommitOutput

=head1 ATTRIBUTES


=head2 CommitId => Str

The full commit ID of the commit that contains your committed file
changes.


=head2 FilesAdded => ArrayRef[L<Paws::CodeCommit::FileMetadata>]

The files added as part of the committed file changes.


=head2 FilesDeleted => ArrayRef[L<Paws::CodeCommit::FileMetadata>]

The files deleted as part of the committed file changes.


=head2 FilesUpdated => ArrayRef[L<Paws::CodeCommit::FileMetadata>]

The files updated as part of the commited file changes.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the commited file changes.


=head2 _request_id => Str


=cut

1;