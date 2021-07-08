
package Paws::Chime::SendChannelMessageResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::SendChannelMessageResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 MessageId => Str

The ID string assigned to each message.


=head2 _request_id => Str


=cut

