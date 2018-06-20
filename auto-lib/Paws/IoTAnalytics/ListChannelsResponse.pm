
package Paws::IoTAnalytics::ListChannelsResponse;
  use Moose;
  has ChannelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::ChannelSummary]', traits => ['NameInRequest'], request_name => 'channelSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListChannelsResponse

=head1 ATTRIBUTES


=head2 ChannelSummaries => ArrayRef[L<Paws::IoTAnalytics::ChannelSummary>]

A list of "ChannelSummary" objects.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

