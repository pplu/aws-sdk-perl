
package Paws::KinesisAnalytics::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::KinesisAnalytics::Tag>]

The key-value tags assigned to the application.


=head2 _request_id => Str


=cut

1;