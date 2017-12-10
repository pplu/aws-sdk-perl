
package Paws::CodeCommit::GetCommentOutput;
  use Moose;
  has Comment => (is => 'ro', isa => 'Paws::CodeCommit::Comment', traits => ['NameInRequest'], request_name => 'comment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentOutput

=head1 ATTRIBUTES


=head2 Comment => L<Paws::CodeCommit::Comment>

The contents of the comment.


=head2 _request_id => Str


=cut

1;