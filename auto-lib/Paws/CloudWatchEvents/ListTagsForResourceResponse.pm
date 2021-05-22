
package Paws::CloudWatchEvents::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]

The list of tag keys and values associated with the resource you
specified


=head2 _request_id => Str


=cut

1;