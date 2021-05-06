
package Paws::ApplicationInsights::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ApplicationInsights::Tag>]

An array that lists all the tags that are associated with the
application. Each tag consists of a required tag key (C<Key>) and an
associated tag value (C<Value>).


=head2 _request_id => Str


=cut

1;