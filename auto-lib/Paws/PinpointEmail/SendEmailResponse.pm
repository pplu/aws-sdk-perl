
package Paws::PinpointEmail::SendEmailResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::SendEmailResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

A unique identifier for the message that is generated when Amazon
Pinpoint accepts the message.

It is possible for Amazon Pinpoint to accept a message without sending
it. This can happen when the message you're trying to send has an
attachment doesn't pass a virus check, or when you send a templated
email that contains invalid personalization content, for example.


=head2 _request_id => Str


=cut

