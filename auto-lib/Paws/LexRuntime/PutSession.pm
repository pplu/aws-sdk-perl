
package Paws::LexRuntime::PutSession;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has ActiveContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::ActiveContext]', traits => ['NameInRequest'], request_name => 'activeContexts');
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has DialogAction => (is => 'ro', isa => 'Paws::LexRuntime::DialogAction', traits => ['NameInRequest'], request_name => 'dialogAction');
  has RecentIntentSummaryView => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::IntentSummary]', traits => ['NameInRequest'], request_name => 'recentIntentSummaryView');
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'sessionAttributes');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::PutSessionResponse');
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
      BotAlias       => 'MyBotAlias',
      BotName        => 'MyBotName',
      UserId         => 'MyUserId',
      Accept         => 'MyAccept',     # OPTIONAL
      ActiveContexts => [
        {
          Name       => 'MyActiveContextName',    # min: 1, max: 100
          Parameters => {
            'MyParameterName' =>
              'MyText',    # key: min: 1, max: 100, value: min: 1, max: 1024
          },    # max: 10
          TimeToLive => {
            TimeToLiveInSeconds => 1,    # min: 5, max: 86400; OPTIONAL
            TurnsToLive         => 1,    # min: 1, max: 20; OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      DialogAction => {
        Type => 'ElicitIntent'
        ,    # values: ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
        FulfillmentState => 'Fulfilled'
        ,    # values: Fulfilled, Failed, ReadyForFulfillment; OPTIONAL
        IntentName    => 'MyIntentName',    # OPTIONAL
        Message       => 'MyText',          # min: 1, max: 1024
        MessageFormat => 'PlainText'
        ,    # values: PlainText, CustomPayload, SSML, Composite; OPTIONAL
        SlotToElicit => 'MyString',    # OPTIONAL
        Slots        => {
          'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
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
          IntentName   => 'MyIntentName',    # OPTIONAL
          SlotToElicit => 'MyString',        # OPTIONAL
          Slots        => {
            'MyString' => 'MyString',        # key: OPTIONAL, value: OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SessionAttributes => {
        'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ActiveContexts    = $PutSessionResponse->ActiveContexts;
    my $AudioStream       = $PutSessionResponse->AudioStream;
    my $ContentType       = $PutSessionResponse->ContentType;
    my $DialogState       = $PutSessionResponse->DialogState;
    my $EncodedMessage    = $PutSessionResponse->EncodedMessage;
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




=head2 ActiveContexts => ArrayRef[L<Paws::LexRuntime::ActiveContext>]

A list of contexts active for the request. A context can be activated
when a previous intent is fulfilled, or by including the context in the
request,

If you don't specify a list of contexts, Amazon Lex will use the
current list of contexts for the session. If you specify an empty list,
all contexts for the session are cleared.



=head2 B<REQUIRED> BotAlias => Str

The alias in use for the bot that contains the session data.



=head2 B<REQUIRED> BotName => Str

The name of the bot that contains the session data.



=head2 DialogAction => L<Paws::LexRuntime::DialogAction>

Sets the next action that the bot should take to fulfill the
conversation.



=head2 RecentIntentSummaryView => ArrayRef[L<Paws::LexRuntime::IntentSummary>]

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



=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

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

