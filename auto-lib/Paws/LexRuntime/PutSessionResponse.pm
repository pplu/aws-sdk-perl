
package Paws::LexRuntime::PutSessionResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AudioStream');
  use Types::Standard qw/Str/;
  use Paws::LexRuntime::Types qw//;
  has AudioStream => (is => 'ro', isa => Str);
  has ContentType => (is => 'ro', isa => Str);
  has DialogState => (is => 'ro', isa => Str);
  has IntentName => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has MessageFormat => (is => 'ro', isa => Str);
  has SessionAttributes => (is => 'ro', isa => Str);
  has SessionId => (is => 'ro', isa => Str);
  has Slots => (is => 'ro', isa => Str);
  has SlotToElicit => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'IntentName' => 'x-amz-lex-intent-name',
                       'ContentType' => 'Content-Type',
                       'SlotToElicit' => 'x-amz-lex-slot-to-elicit',
                       'Slots' => 'x-amz-lex-slots',
                       'SessionAttributes' => 'x-amz-lex-session-attributes',
                       'MessageFormat' => 'x-amz-lex-message-format',
                       'Message' => 'x-amz-lex-message',
                       'SessionId' => 'x-amz-lex-session-id',
                       'DialogState' => 'x-amz-lex-dialog-state'
                     },
  'NameInRequest' => {
                       'AudioStream' => 'audioStream'
                     },
  'types' => {
               'DialogState' => {
                                  'type' => 'Str'
                                },
               'AudioStream' => {
                                  'type' => 'Str'
                                },
               'SessionId' => {
                                'type' => 'Str'
                              },
               'Message' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MessageFormat' => {
                                    'type' => 'Str'
                                  },
               'IntentName' => {
                                 'type' => 'Str'
                               },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'SlotToElicit' => {
                                   'type' => 'Str'
                                 },
               'SessionAttributes' => {
                                        'type' => 'Str'
                                      },
               'Slots' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PutSessionResponse

=head1 ATTRIBUTES


=head2 AudioStream => Str

The audio version of the message to convey to the user.


=head2 ContentType => Str

Content type as specified in the C<Accept> HTTP header in the request.


=head2 DialogState => Str

=over

=item *

C<ConfirmIntent> - Amazon Lex is expecting a "yes" or "no" response to
confirm the intent before fulfilling an intent.

=item *

C<ElicitIntent> - Amazon Lex wants to elicit the user's intent.

=item *

C<ElicitSlot> - Amazon Lex is expecting the value of a slot for the
current intent.

=item *

C<Failed> - Conveys that the conversation with the user has failed.
This can happen for various reasons, including the user does not
provide an appropriate response to prompts from the service, or if the
Lambda function fails to fulfill the intent.

=item *

C<Fulfilled> - Conveys that the Lambda function has sucessfully
fulfilled the intent.

=item *

C<ReadyForFulfillment> - Conveys that the client has to fulfill the
intent.

=back


Valid values are: C<"ElicitIntent">, C<"ConfirmIntent">, C<"ElicitSlot">, C<"Fulfilled">, C<"ReadyForFulfillment">, C<"Failed">
=head2 IntentName => Str

The name of the current intent.


=head2 Message => Str

The next message that should be presented to the user.


=head2 MessageFormat => Str

The format of the response message. One of the following values:

=over

=item *

C<PlainText> - The message contains plain UTF-8 text.

=item *

C<CustomPayload> - The message is a custom format for the client.

=item *

C<SSML> - The message contains text formatted for voice output.

=item *

C<Composite> - The message contains an escaped JSON object containing
one or more messages from the groups that messages were assigned to
when the intent was created.

=back


Valid values are: C<"PlainText">, C<"CustomPayload">, C<"SSML">, C<"Composite">
=head2 SessionAttributes => Str

Map of key/value pairs representing session-specific context
information.


=head2 SessionId => Str

A unique identifier for the session.


=head2 Slots => Str

Map of zero or more intent slots Amazon Lex detected from the user
input during the conversation.

Amazon Lex creates a resolution list containing likely values for a
slot. The value that it returns is determined by the
C<valueSelectionStrategy> selected when the slot type was created or
updated. If C<valueSelectionStrategy> is set to C<ORIGINAL_VALUE>, the
value provided by the user is returned, if the user value is similar to
the slot values. If C<valueSelectionStrategy> is set to
C<TOP_RESOLUTION> Amazon Lex returns the first value in the resolution
list or, if there is no resolution list, null. If you don't specify a
C<valueSelectionStrategy> the default is C<ORIGINAL_VALUE>.


=head2 SlotToElicit => Str

If the C<dialogState> is C<ElicitSlot>, returns the name of the slot
for which Amazon Lex is eliciting a value.


=head2 _request_id => Str


=cut

