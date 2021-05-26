
package Paws::KinesisVideo::DescribeSignalingChannelOutput;
  use Moose;
  has ChannelInfo => (is => 'ro', isa => 'Paws::KinesisVideo::ChannelInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeSignalingChannelOutput

=head1 ATTRIBUTES


=head2 ChannelInfo => L<Paws::KinesisVideo::ChannelInfo>

A structure that encapsulates the specified signaling channel's
metadata and properties.


=head2 _request_id => Str


=cut

