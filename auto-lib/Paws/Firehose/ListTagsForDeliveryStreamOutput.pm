
package Paws::Firehose::ListTagsForDeliveryStreamOutput;
  use Moose;
  has HasMoreTags => (is => 'ro', isa => 'Bool', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ListTagsForDeliveryStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> HasMoreTags => Bool

If this is C<true> in the response, more tags are available. To list
the remaining tags, set C<ExclusiveStartTagKey> to the key of the last
tag returned and call C<ListTagsForDeliveryStream> again.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Firehose::Tag>]

A list of tags associated with C<DeliveryStreamName>, starting with the
first tag after C<ExclusiveStartTagKey> and up to the specified
C<Limit>.


=head2 _request_id => Str


=cut

1;