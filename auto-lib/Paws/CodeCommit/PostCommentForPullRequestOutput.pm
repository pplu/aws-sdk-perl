
package Paws::CodeCommit::PostCommentForPullRequestOutput;
  use Moose;
  has AfterBlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterBlobId' );
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' );
  has BeforeBlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeBlobId' );
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' );
  has Comment => (is => 'ro', isa => 'Paws::CodeCommit::Comment', traits => ['NameInRequest'], request_name => 'comment' );
  has Location => (is => 'ro', isa => 'Paws::CodeCommit::Location', traits => ['NameInRequest'], request_name => 'location' );
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PostCommentForPullRequestOutput

=head1 ATTRIBUTES


=head2 AfterBlobId => Str

In the directionality of the pull request, the blob ID of the 'after'
blob.


=head2 AfterCommitId => Str

The full commit ID of the commit in the destination branch where the
pull request will be merged.


=head2 BeforeBlobId => Str

In the directionality of the pull request, the blob ID of the 'before'
blob.


=head2 BeforeCommitId => Str

The full commit ID of the commit in the source branch used to create
the pull request, or in the case of an updated pull request, the full
commit ID of the commit used to update the pull request.


=head2 Comment => L<Paws::CodeCommit::Comment>

The content of the comment you posted.


=head2 Location => L<Paws::CodeCommit::Location>

The location of the change where you posted your comment.


=head2 PullRequestId => Str

The system-generated ID of the pull request.


=head2 RepositoryName => Str

The name of the repository where you posted a comment on a pull
request.


=head2 _request_id => Str


=cut

1;