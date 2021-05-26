
package Paws::KinesisVideo::GetSignalingChannelEndpointOutput;
  use Moose;
  has ResourceEndpointList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::ResourceEndpointListItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::GetSignalingChannelEndpointOutput

=head1 ATTRIBUTES


=head2 ResourceEndpointList => ArrayRef[L<Paws::KinesisVideo::ResourceEndpointListItem>]

A list of endpoints for the specified signaling channel.


=head2 _request_id => Str


=cut

