
package Paws::MediaLive::DescribeMultiplexProgramResponse;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId');
  has MultiplexProgramSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramSettings', traits => ['NameInRequest'], request_name => 'multiplexProgramSettings');
  has PacketIdentifiersMap => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramPacketIdentifiersMap', traits => ['NameInRequest'], request_name => 'packetIdentifiersMap');
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'programName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeMultiplexProgramResponse

=head1 ATTRIBUTES


=head2 ChannelId => Str

The MediaLive channel associated with the program.


=head2 MultiplexProgramSettings => L<Paws::MediaLive::MultiplexProgramSettings>

The settings for this multiplex program.


=head2 PacketIdentifiersMap => L<Paws::MediaLive::MultiplexProgramPacketIdentifiersMap>

The packet identifier map for this multiplex program.


=head2 ProgramName => Str

The name of the multiplex program.


=head2 _request_id => Str


=cut

