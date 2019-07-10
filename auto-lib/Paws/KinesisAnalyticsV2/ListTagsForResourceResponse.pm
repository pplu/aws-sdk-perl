
package Paws::KinesisAnalyticsV2::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::KinesisAnalyticsV2::Tag>]

The key-value tags assigned to the application.


=head2 _request_id => Str


=cut

1;