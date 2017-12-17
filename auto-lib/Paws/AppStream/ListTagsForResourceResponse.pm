
package Paws::AppStream::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::AppStream::Tags>

The information about the tags.


=head2 _request_id => Str


=cut

1;