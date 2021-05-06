
package Paws::CodeCommit::GetCommentsForComparedCommitOutput;
  use Moose;
  has CommentsForComparedCommitData => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::CommentsForComparedCommit]', traits => ['NameInRequest'], request_name => 'commentsForComparedCommitData' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForComparedCommitOutput

=head1 ATTRIBUTES


=head2 CommentsForComparedCommitData => ArrayRef[L<Paws::CodeCommit::CommentsForComparedCommit>]

A list of comment objects on the compared commit.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;