
package Paws::FMS::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::FMS::Tag>]

The tags associated with the resource.


=head2 _request_id => Str


=cut

1;