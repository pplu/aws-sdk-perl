
package Paws::CodeCommit::GetCommentsForPullRequestOutput;
  use Moose;
  has CommentsForPullRequestData => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::CommentsForPullRequest]', traits => ['NameInRequest'], request_name => 'commentsForPullRequestData' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForPullRequestOutput

=head1 ATTRIBUTES


=head2 CommentsForPullRequestData => ArrayRef[L<Paws::CodeCommit::CommentsForPullRequest>]

An array of comment objects on the pull request.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;