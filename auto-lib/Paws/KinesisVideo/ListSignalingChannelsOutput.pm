
package Paws::KinesisVideo::ListSignalingChannelsOutput;
  use Moose;
  has ChannelInfoList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::ChannelInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListSignalingChannelsOutput

=head1 ATTRIBUTES


=head2 ChannelInfoList => ArrayRef[L<Paws::KinesisVideo::ChannelInfo>]

An array of C<ChannelInfo> objects.


=head2 NextToken => Str

If the response is truncated, the call returns this element with a
token. To get the next batch of streams, use this token in your next
request.


=head2 _request_id => Str


=cut

