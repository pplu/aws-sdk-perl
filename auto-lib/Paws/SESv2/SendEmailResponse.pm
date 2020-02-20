
package Paws::SESv2::SendEmailResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendEmailResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

A unique identifier for the message that is generated when the message
is accepted.

It's possible for Amazon SES to accept a message without sending it.
This can happen when the message that you're trying to send has an
attachment contains a virus, or when you send a templated email that
contains invalid personalization content, for example.


=head2 _request_id => Str


=cut

