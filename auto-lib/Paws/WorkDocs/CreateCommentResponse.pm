
package Paws::WorkDocs::CreateCommentResponse;
  use Moose;
  has Comment => (is => 'ro', isa => 'Paws::WorkDocs::Comment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateCommentResponse

=head1 ATTRIBUTES


=head2 Comment => L<Paws::WorkDocs::Comment>

The comment that has been created.


=head2 _request_id => Str


=cut

