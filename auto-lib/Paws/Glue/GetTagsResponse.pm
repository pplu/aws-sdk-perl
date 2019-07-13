
package Paws::Glue::GetTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTagsResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Glue::TagsMap>

The requested tags.


=head2 _request_id => Str


=cut

1;