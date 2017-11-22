
package Paws::CodeCommit::PostCommentForComparedCommitOutput;
  use Moose;
  has AfterBlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterBlobId' );
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' );
  has BeforeBlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeBlobId' );
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' );
  has Comment => (is => 'ro', isa => 'Paws::CodeCommit::Comment', traits => ['NameInRequest'], request_name => 'comment' );
  has Location => (is => 'ro', isa => 'Paws::CodeCommit::Location', traits => ['NameInRequest'], request_name => 'location' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForComparedCommitOutput

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

In the directionality you established, the blob ID of the 'after' blob.


=head2 AfterCommitId => Str

In the directionality you established, the full commit ID of the
'after' commit.


=head2 BeforeBlobId => Str

In the directionality you established, the blob ID of the 'before'
blob.


=head2 BeforeCommitId => Str

In the directionality you established, the full commit ID of the
'before' commit.


=head2 Comment => L<Paws::CodeCommit::Comment>

The content of the comment you posted.


=head2 Location => L<Paws::CodeCommit::Location>

The location of the comment in the comparison between the two commits.


=head2 RepositoryName => Str

The name of the repository where you posted a comment on the comparison
between commits.


=head2 _request_id => Str


=cut

1;