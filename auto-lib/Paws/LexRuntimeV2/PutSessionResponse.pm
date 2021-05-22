
package Paws::LexRuntimeV2::PutSessionResponse;
  use Moose;
  has AudioStream => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audioStream');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Messages => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-messages');
  has RequestAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-request-attributes');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-id');
  has SessionState => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-state');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AudioStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::PutSessionResponse

=head1 ATTRIBUTES


=head2 AudioStream => Str

If the requested content type was audio, the audio version of the
message to convey to the user.


=head2 ContentType => Str

The type of response. Same as the type specified in the
C<responseContentType> field in the request.


=head2 Messages => Str

A list of messages that were last sent to the user. The messages are
ordered based on how you return the messages from you Lambda function
or the order that the messages are defined in the bot.


=head2 RequestAttributes => Str

Request-specific information passed between the client application and
Amazon Lex. These are the same as the C<requestAttribute> parameter in
the call to the C<PutSession> operation.


=head2 SessionId => Str

The identifier of the session that received the data.


=head2 SessionState => Str

Represents the current state of the dialog between the user and the
bot.

Use this to determine the progress of the conversation and what the
next action may be.


=head2 _request_id => Str


=cut

