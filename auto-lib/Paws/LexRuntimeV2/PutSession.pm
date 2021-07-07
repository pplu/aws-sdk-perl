
package Paws::LexRuntimeV2::PutSession;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntimeV2::Message]', traits => ['NameInRequest'], request_name => 'messages');
  has RequestAttributes => (is => 'ro', isa => 'Paws::LexRuntimeV2::StringMap', traits => ['NameInRequest'], request_name => 'requestAttributes');
  has ResponseContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ResponseContentType');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has SessionState => (is => 'ro', isa => 'Paws::LexRuntimeV2::SessionState', traits => ['NameInRequest'], request_name => 'sessionState', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntimeV2::PutSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::PutSession - Arguments for method PutSession on L<Paws::LexRuntimeV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSession on the
L<Amazon Lex Runtime V2|Paws::LexRuntimeV2> service. Use the attributes of this class
as arguments to method PutSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSession.

=head1 SYNOPSIS

    my $runtime-v2-lex = Paws->service('LexRuntimeV2');
    my $PutSessionResponse = $runtime - v2 -lex->PutSession(
      BotAliasId   => 'MyBotAliasIdentifier',
      BotId        => 'MyBotIdentifier',
      LocaleId     => 'MyLocaleId',
      SessionId    => 'MySessionId',
      SessionState => {
        ActiveContexts => [
          {
            ContextAttributes => {
              'MyParameterName' =>
                'MyText',    # key: min: 1, max: 100, value: min: 1, max: 1024
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
          ,   # values: Close, ConfirmIntent, Delegate, ElicitIntent, ElicitSlot
          SlotToElicit => 'MyNonEmptyString',    # min: 1; OPTIONAL
        },    # OPTIONAL
        Intent => {
          Name              => 'MyNonEmptyString',    # min: 1; OPTIONAL
          ConfirmationState =>
            'Confirmed',    # values: Confirmed, Denied, None; OPTIONAL
          Slots => {
            'MyNonEmptyString' => {
              Shape => 'Scalar',    # values: Scalar, List; OPTIONAL
              Value => {
                InterpretedValue => 'MyNonEmptyString',    # min: 1; OPTIONAL
                OriginalValue    => 'MyNonEmptyString',    # min: 1; OPTIONAL
                ResolvedValues   => [
                  'MyNonEmptyString', ...                  # min: 1; OPTIONAL
                ],    # OPTIONAL
              },    # OPTIONAL
              Values => [ <Slot>, ... ],    # OPTIONAL
            },    # key: min: 1; OPTIONAL
          },    # OPTIONAL
          State => 'Failed'
          , # values: Failed, Fulfilled, InProgress, ReadyForFulfillment, Waiting; OPTIONAL
        },    # OPTIONAL
        OriginatingRequestId => 'MyNonEmptyString',    # min: 1; OPTIONAL
        SessionAttributes    => {
          'MyNonEmptyString' => 'MyString',            # key: min: 1; OPTIONAL
        },    # OPTIONAL
      },
      Messages => [
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
      ],    # OPTIONAL
      RequestAttributes => {
        'MyNonEmptyString' => 'MyString',    # key: min: 1; OPTIONAL
      },    # OPTIONAL
      ResponseContentType => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $AudioStream       = $PutSessionResponse->AudioStream;
    my $ContentType       = $PutSessionResponse->ContentType;
    my $Messages          = $PutSessionResponse->Messages;
    my $RequestAttributes = $PutSessionResponse->RequestAttributes;
    my $SessionId         = $PutSessionResponse->SessionId;
    my $SessionState      = $PutSessionResponse->SessionState;

    # Returns a L<Paws::LexRuntimeV2::PutSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex/PutSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The alias identifier of the bot that receives the session data.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot that receives the session data.



=head2 B<REQUIRED> LocaleId => Str

The locale where the session is in use.



=head2 Messages => ArrayRef[L<Paws::LexRuntimeV2::Message>]

A list of messages to send to the user. Messages are sent in the order
that they are defined in the list.



=head2 RequestAttributes => L<Paws::LexRuntimeV2::StringMap>

Request-specific information passed between Amazon Lex V2 and the
client application.

The namespace C<x-amz-lex:> is reserved for special attributes. Don't
create any request attributes with the prefix C<x-amz-lex:>.



=head2 ResponseContentType => Str

The message that Amazon Lex V2 returns in the response can be either
text or speech depending on the value of this parameter.

=over

=item *

If the value is C<text/plain; charset=utf-8>, Amazon Lex V2 returns
text in the response.

=back




=head2 B<REQUIRED> SessionId => Str

The identifier of the session that receives the session data.



=head2 B<REQUIRED> SessionState => L<Paws::LexRuntimeV2::SessionState>

Sets the state of the session with the user. You can use this to set
the current intent, attributes, context, and dialog action. Use the
dialog action to determine the next step that Amazon Lex V2 should use
in the conversation with the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSession in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

