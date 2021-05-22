
package Paws::Chime::ListChannelMessagesResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has ChannelMessages => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ChannelMessageSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelMessagesResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel containing the requested messages.


=head2 ChannelMessages => ArrayRef[L<Paws::Chime::ChannelMessageSummary>]

The information about, and content of, each requested message.


=head2 NextToken => Str

The token passed by previous API calls until all requested messages are
returned.


=head2 _request_id => Str


=cut

