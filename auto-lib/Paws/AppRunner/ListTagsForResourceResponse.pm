
package Paws::AppRunner::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

A list of the tag key-value pairs that are associated with the
resource.


=head2 _request_id => Str


=cut

1;