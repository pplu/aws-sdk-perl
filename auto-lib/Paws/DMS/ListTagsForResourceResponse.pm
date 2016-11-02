
package Paws::DMS::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::DMS::Tag>]

A list of tags for the resource.


=head2 _request_id => Str


=cut

1;