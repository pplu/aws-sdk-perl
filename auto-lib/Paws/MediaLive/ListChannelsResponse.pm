
package Paws::MediaLive::ListChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ChannelSummary]', traits => ['NameInRequest'], request_name => 'channels');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::MediaLive::ChannelSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

