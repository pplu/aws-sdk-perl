
package Paws::LexRuntimeV2::RecognizeText;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has RequestAttributes => (is => 'ro', isa => 'Paws::LexRuntimeV2::StringMap', traits => ['NameInRequest'], request_name => 'requestAttributes');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has SessionState => (is => 'ro', isa => 'Paws::LexRuntimeV2::SessionState', traits => ['NameInRequest'], request_name => 'sessionState');
  has Text => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'text', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecognizeText');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntimeV2::RecognizeTextResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::RecognizeText - Arguments for method RecognizeText on L<Paws::LexRuntimeV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RecognizeText on the
L<Amazon Lex Runtime V2|Paws::LexRuntimeV2> service. Use the attributes of this class
as arguments to method RecognizeText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RecognizeText.

=head1 SYNOPSIS

    my $runtime-v2-lex = Paws->service('LexRuntimeV2');
    my $RecognizeTextResponse = $runtime - v2 -lex->RecognizeText(
      BotAliasId        => 'MyBotAliasIdentifier',
      BotId             => 'MyBotIdentifier',
      LocaleId          => 'MyLocaleId',
      SessionId         => 'MySessionId',
      Text              => 'MyText',
      RequestAttributes => {
        'MyNonEmptyString' => 'MyString',    # key: min: 1
      },    # OPTIONAL
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
        },
      },    # OPTIONAL
    );

    # Results:
    my $Interpretations   = $RecognizeTextResponse->Interpretations;
    my $Messages          = $RecognizeTextResponse->Messages;
    my $RequestAttributes = $RecognizeTextResponse->RequestAttributes;
    my $SessionId         = $RecognizeTextResponse->SessionId;
    my $SessionState      = $RecognizeTextResponse->SessionState;

    # Returns a L<Paws::LexRuntimeV2::RecognizeTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex/RecognizeText>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The alias identifier in use for the bot that processes the request.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot that processes the request.



=head2 B<REQUIRED> LocaleId => Str

The locale where the session is in use.



=head2 RequestAttributes => L<Paws::LexRuntimeV2::StringMap>

Request-specific information passed between the client application and
Amazon Lex V2

The namespace C<x-amz-lex:> is reserved for special attributes. Don't
create any request attributes with the prefix C<x-amz-lex:>.



=head2 B<REQUIRED> SessionId => Str

The identifier of the user session that is having the conversation.



=head2 SessionState => L<Paws::LexRuntimeV2::SessionState>

The current state of the dialog between the user and the bot.



=head2 B<REQUIRED> Text => Str

The text that the user entered. Amazon Lex V2 interprets this text.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RecognizeText in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

