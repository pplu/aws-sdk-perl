
package Paws::CodeCommit::GetCommentReactionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReactionsForComment => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::ReactionForComment]', traits => ['NameInRequest'], request_name => 'reactionsForComment' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentReactionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> ReactionsForComment => ArrayRef[L<Paws::CodeCommit::ReactionForComment>]

An array of reactions to the specified comment.


=head2 _request_id => Str


=cut

1;