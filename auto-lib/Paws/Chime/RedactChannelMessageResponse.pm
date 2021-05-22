
package Paws::Chime::RedactChannelMessageResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RedactChannelMessageResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel containing the messages that you want to redact.


=head2 MessageId => Str

The ID of the message being redacted.


=head2 _request_id => Str


=cut

