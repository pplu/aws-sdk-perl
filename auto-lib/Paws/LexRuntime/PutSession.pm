
package Paws::LexRuntime::PutSession;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexRuntime::Types qw/LexRuntime_StringMap LexRuntime_DialogAction LexRuntime_IntentSummary/;
  has Accept => (is => 'ro', isa => Str, predicate => 1);
  has BotAlias => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DialogAction => (is => 'ro', isa => LexRuntime_DialogAction, predicate => 1);
  has RecentIntentSummaryView => (is => 'ro', isa => ArrayRef[LexRuntime_IntentSummary], predicate => 1);
  has SessionAttributes => (is => 'ro', isa => LexRuntime_StringMap, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutSession');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/session');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LexRuntime::PutSessionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'Accept' => 'Accept'
                     },
  'types' => {
               'BotName' => {
                              'type' => 'Str'
                            },
               'SessionAttributes' => {
                                        'type' => 'LexRuntime_StringMap',
                                        'class' => 'Paws::LexRuntime::StringMap'
                                      },
               'BotAlias' => {
                               'type' => 'Str'
                             },
               'Accept' => {
                             'type' => 'Str'
                           },
               'UserId' => {
                             'type' => 'Str'
                           },
               'DialogAction' => {
                                   'type' => 'LexRuntime_DialogAction',
                                   'class' => 'Paws::LexRuntime::DialogAction'
                                 },
               'RecentIntentSummaryView' => {
                                              'type' => 'ArrayRef[LexRuntime_IntentSummary]',
                                              'class' => 'Paws::LexRuntime::IntentSummary'
                                            }
             },
  'NameInRequest' => {
                       'SessionAttributes' => 'sessionAttributes',
                       'DialogAction' => 'dialogAction',
                       'RecentIntentSummaryView' => 'recentIntentSummaryView'
                     },
  'IsRequired' => {
                    'BotName' => 1,
                    'UserId' => 1,
                    'BotAlias' => 1
                  },
  'ParamInURI' => {
                    'UserId' => 'userId',
                    'BotAlias' => 'botAlias',
                    'BotName' => 'botName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PutSession - Arguments for method PutSession on L<Paws::LexRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSession on the
L<Amazon Lex Runtime Service|Paws::LexRuntime> service. Use the attributes of this class
as arguments to method PutSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSession.

=head1 SYNOPSIS

    my $runtime.lex = Paws->service('LexRuntime');
    my $PutSessionResponse = $runtime . lex->PutSession(
      BotAlias     => 'MyBotAlias',
      BotName      => 'MyBotName',
      UserId       => 'MyUserId',
      Accept       => 'MyAccept',     # OPTIONAL
      DialogAction => {
        Type => 'ElicitIntent'
        ,    # values: ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
        FulfillmentState => 'Fulfilled'
        ,    # values: Fulfilled, Failed, ReadyForFulfillment; OPTIONAL
        IntentName    => 'MyIntentName',    # OPTIONAL
        Message       => 'MyText',          # min: 1, max: 1024; OPTIONAL
        MessageFormat => 'PlainText'
        ,    # values: PlainText, CustomPayload, SSML, Composite; OPTIONAL
        SlotToElicit => 'MyString',
        Slots        => { 'MyString' => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
      RecentIntentSummaryView => [
        {
          DialogActionType => 'ElicitIntent'
          ,   # values: ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
          CheckpointLabel =>
            'MyIntentSummaryCheckpointLabel',    # min: 1, max: 255; OPTIONAL
          ConfirmationStatus =>
            'None',    # values: None, Confirmed, Denied; OPTIONAL
          FulfillmentState => 'Fulfilled'
          ,    # values: Fulfilled, Failed, ReadyForFulfillment; OPTIONAL
          IntentName   => 'MyIntentName',                   # OPTIONAL
          SlotToElicit => 'MyString',
          Slots        => { 'MyString' => 'MyString', },    # OPTIONAL
        },
        ...
      ],                                                    # OPTIONAL
      SessionAttributes => { 'MyString' => 'MyString', },   # OPTIONAL
    );

    # Results:
    my $AudioStream       = $PutSessionResponse->AudioStream;
    my $ContentType       = $PutSessionResponse->ContentType;
    my $DialogState       = $PutSessionResponse->DialogState;
    my $IntentName        = $PutSessionResponse->IntentName;
    my $Message           = $PutSessionResponse->Message;
    my $MessageFormat     = $PutSessionResponse->MessageFormat;
    my $SessionAttributes = $PutSessionResponse->SessionAttributes;
    my $SessionId         = $PutSessionResponse->SessionId;
    my $SlotToElicit      = $PutSessionResponse->SlotToElicit;
    my $Slots             = $PutSessionResponse->Slots;

    # Returns a L<Paws::LexRuntime::PutSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex/PutSession>

=head1 ATTRIBUTES


=head2 Accept => Str

The message that Amazon Lex returns in the response can be either text
or speech based depending on the value of this field.

=over

=item *

If the value is C<text/plain; charset=utf-8>, Amazon Lex returns text
in the response.

=item *

If the value begins with C<audio/>, Amazon Lex returns speech in the
response. Amazon Lex uses Amazon Polly to generate the speech in the
configuration that you specify. For example, if you specify
C<audio/mpeg> as the value, Amazon Lex returns speech in the MPEG
format.

=item *

If the value is C<audio/pcm>, the speech is returned as C<audio/pcm> in
16-bit, little endian format.

=item *

The following are the accepted values:

=over

=item *

C<audio/mpeg>

=item *

C<audio/ogg>

=item *

C<audio/pcm>

=item *

C<audio/*> (defaults to mpeg)

=item *

C<text/plain; charset=utf-8>

=back

=back




=head2 B<REQUIRED> BotAlias => Str

The alias in use for the bot that contains the session data.



=head2 B<REQUIRED> BotName => Str

The name of the bot that contains the session data.



=head2 DialogAction => LexRuntime_DialogAction

Sets the next action that the bot should take to fulfill the
conversation.



=head2 RecentIntentSummaryView => ArrayRef[LexRuntime_IntentSummary]

A summary of the recent intents for the bot. You can use the intent
summary view to set a checkpoint label on an intent and modify
attributes of intents. You can also use it to remove or add intent
summary objects to the list.

An intent that you modify or add to the list must make sense for the
bot. For example, the intent name must be valid for the bot. You must
provide valid values for:

=over

=item *

C<intentName>

=item *

slot names

=item *

C<slotToElict>

=back

If you send the C<recentIntentSummaryView> parameter in a C<PutSession>
request, the contents of the new summary view replaces the old summary
view. For example, if a C<GetSession> request returns three intents in
the summary view and you call C<PutSession> with one intent in the
summary view, the next call to C<GetSession> will only return one
intent.



=head2 SessionAttributes => LexRuntime_StringMap

Map of key/value pairs representing the session-specific context
information. It contains application information passed between Amazon
Lex and a client application.



=head2 B<REQUIRED> UserId => Str

The ID of the client application user. Amazon Lex uses this to identify
a user's conversation with your bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSession in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

