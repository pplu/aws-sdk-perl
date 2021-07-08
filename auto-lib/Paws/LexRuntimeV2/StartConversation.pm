
package Paws::LexRuntimeV2::StartConversation;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has ConversationMode => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-conversation-mode');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has RequestEventStream => (is => 'ro', isa => 'Paws::LexRuntimeV2::StartConversationRequestEventStream', traits => ['NameInRequest'], request_name => 'requestEventStream', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'RequestEventStream');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConversation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/conversation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntimeV2::StartConversationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::StartConversation - Arguments for method StartConversation on L<Paws::LexRuntimeV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConversation on the
L<Amazon Lex Runtime V2|Paws::LexRuntimeV2> service. Use the attributes of this class
as arguments to method StartConversation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConversation.

=head1 SYNOPSIS

    my $runtime-v2-lex = Paws->service('LexRuntimeV2');
    my $StartConversationResponse = $runtime - v2 -lex->StartConversation(
      BotAliasId         => 'MyBotAliasIdentifier',
      BotId              => 'MyBotIdentifier',
      LocaleId           => 'MyLocaleId',
      RequestEventStream => {
        AudioInputEvent => {
          ContentType           => 'MyNonEmptyString',    # min: 1
          AudioChunk            => 'BlobAudioChunk',      # OPTIONAL
          ClientTimestampMillis => 1,                     # OPTIONAL
          EventId               => 'MyEventId',    # min: 2, max: 100; OPTIONAL
        },    # OPTIONAL
        ConfigurationEvent => {
          ResponseContentType   => 'MyNonEmptyString',    # min: 1
          ClientTimestampMillis => 1,                     # OPTIONAL
          DisablePlayback       => 1,                     # OPTIONAL
          EventId               => 'MyEventId',    # min: 2, max: 100; OPTIONAL
          RequestAttributes     => {
            'MyNonEmptyString' => 'MyString',      # key: min: 1
          },    # OPTIONAL
          SessionState => {
            ActiveContexts => [
              {
                ContextAttributes => {
                  'MyParameterName' =>
                    'MyText',  # key: min: 1, max: 100, value: min: 1, max: 1024
                },    # max: 10
                Name       => 'MyActiveContextName',    # min: 1, max: 100
                TimeToLive => {
                  TimeToLiveInSeconds => 1,             # min: 5, max: 86400
                  TurnsToLive         => 1,             # min: 1, max: 20

                },

              },
              ...
            ],    # max: 20; OPTIONAL
            DialogAction => {
              Type => 'Close'
              , # values: Close, ConfirmIntent, Delegate, ElicitIntent, ElicitSlot
              SlotToElicit => 'MyNonEmptyString',    # min: 1
            },    # OPTIONAL
            Intent => {
              Name              => 'MyNonEmptyString',    # min: 1
              ConfirmationState =>
                'Confirmed',    # values: Confirmed, Denied, None; OPTIONAL
              Slots => {
                'MyNonEmptyString' => {
                  Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
                  Value => {
                    InterpretedValue => 'MyNonEmptyString',    # min: 1
                    OriginalValue    => 'MyNonEmptyString',    # min: 1
                    ResolvedValues   => [
                      'MyNonEmptyString', ...                  # min: 1
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Values => [ <Slot>, ... ],    # OPTIONAL
                },    # key: min: 1
              },    # OPTIONAL
              State => 'Failed'
              , # values: Failed, Fulfilled, InProgress, ReadyForFulfillment, Waiting; OPTIONAL
            },    # OPTIONAL
            OriginatingRequestId => 'MyNonEmptyString',    # min: 1
            SessionAttributes    => {
              'MyNonEmptyString' => 'MyString',            # key: min: 1
            },    # OPTIONAL
          },    # OPTIONAL
          WelcomeMessages => [
            {
              ContentType => 'CustomPayload'
              ,    # values: CustomPayload, ImageResponseCard, PlainText, SSML
              Content           => 'MyText',    # min: 1, max: 1024
              ImageResponseCard => {
                Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                Buttons => [
                  {
                    Text  => 'MyButtonText',     # min: 1, max: 50
                    Value => 'MyButtonValue',    # min: 1, max: 50

                  },
                  ...
                ],    # max: 5; OPTIONAL
                ImageUrl => 'MyAttachmentUrl',      # min: 1, max: 250; OPTIONAL
                Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
              },    # OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
        },    # OPTIONAL
        DTMFInputEvent => {
          InputCharacter        => 'MyDTMFRegex',   # min: 1, max: 1
          ClientTimestampMillis => 1,               # OPTIONAL
          EventId               => 'MyEventId',     # min: 2, max: 100; OPTIONAL
        },    # OPTIONAL
        DisconnectionEvent => {
          ClientTimestampMillis => 1,              # OPTIONAL
          EventId               => 'MyEventId',    # min: 2, max: 100; OPTIONAL
        },    # OPTIONAL
        PlaybackCompletionEvent => {
          ClientTimestampMillis => 1,              # OPTIONAL
          EventId               => 'MyEventId',    # min: 2, max: 100; OPTIONAL
        },    # OPTIONAL
        TextInputEvent => {
          Text                  => 'MyText',       # min: 1, max: 1024
          ClientTimestampMillis => 1,              # OPTIONAL
          EventId               => 'MyEventId',    # min: 2, max: 100; OPTIONAL
        },    # OPTIONAL
      },
      SessionId        => 'MySessionId',
      ConversationMode => 'AUDIO',         # OPTIONAL
    );

    # Results:
    my $ResponseEventStream = $StartConversationResponse->ResponseEventStream;

    # Returns a L<Paws::LexRuntimeV2::StartConversationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex/StartConversation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The alias identifier in use for the bot that processes the request.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot to process the request.



=head2 ConversationMode => Str

The conversation type that you are using the Amazon Lex V2. If the
conversation mode is C<AUDIO> you can send both audio and DTMF
information. If the mode is C<TEXT> you can only send text.

Valid values are: C<"AUDIO">, C<"TEXT">

=head2 B<REQUIRED> LocaleId => Str

The locale where the session is in use.



=head2 B<REQUIRED> RequestEventStream => L<Paws::LexRuntimeV2::StartConversationRequestEventStream>

Represents the stream of events to Amazon Lex V2 from your application.
The events are encoded as HTTP/2 data frames.



=head2 B<REQUIRED> SessionId => Str

The identifier of the user session that is having the conversation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConversation in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

