
package Paws::Pinpoint::ChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'Paws::Pinpoint::MapOfChannelResponse', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => L<Paws::Pinpoint::MapOfChannelResponse>

A map that contains a multipart response for each channel. For each
item in this object, the ChannelType is the key and the Channel is the
value.


=head2 _request_id => Str


=cut

