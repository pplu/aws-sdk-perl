
package Paws::Chime::GetChannelMessageResponse;
  use Moose;
  has ChannelMessage => (is => 'ro', isa => 'Paws::Chime::ChannelMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetChannelMessageResponse

=head1 ATTRIBUTES


=head2 ChannelMessage => L<Paws::Chime::ChannelMessage>

The details of and content in the message.


=head2 _request_id => Str


=cut

