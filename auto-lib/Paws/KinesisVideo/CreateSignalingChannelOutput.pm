
package Paws::KinesisVideo::CreateSignalingChannelOutput;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::CreateSignalingChannelOutput

=head1 ATTRIBUTES


=head2 ChannelARN => Str

The ARN of the created channel.


=head2 _request_id => Str


=cut

