
package Paws::Chime::ListChannelBansResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelBans => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ChannelBanSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelBansResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 ChannelBans => ArrayRef[L<Paws::Chime::ChannelBanSummary>]

The information for each requested ban.


=head2 NextToken => Str

The token passed by previous API calls until all requested bans are
returned.


=head2 _request_id => Str


=cut

