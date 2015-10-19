
package Paws::ES::ListTagsResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::ES::Tag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListTagsResponse

=head1 ATTRIBUTES

=head2 TagList => ArrayRef[L<Paws::ES::Tag>]

  List of C<Tag> for the requested Elasticsearch domain.


=cut

