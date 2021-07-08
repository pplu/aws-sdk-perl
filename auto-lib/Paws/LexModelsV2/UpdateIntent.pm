
package Paws::LexModelsV2::UpdateIntent;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::DialogCodeHookSettings', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FulfillmentCodeHook => (is => 'ro', isa => 'Paws::LexModelsV2::FulfillmentCodeHookSettings', traits => ['NameInRequest'], request_name => 'fulfillmentCodeHook');
  has InputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::InputContext]', traits => ['NameInRequest'], request_name => 'inputContexts');
  has IntentClosingSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentClosingSetting', traits => ['NameInRequest'], request_name => 'intentClosingSetting');
  has IntentConfirmationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::IntentConfirmationSetting', traits => ['NameInRequest'], request_name => 'intentConfirmationSetting');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has IntentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentName', required => 1);
  has KendraConfiguration => (is => 'ro', isa => 'Paws::LexModelsV2::KendraConfiguration', traits => ['NameInRequest'], request_name => 'kendraConfiguration');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has OutputContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::OutputContext]', traits => ['NameInRequest'], request_name => 'outputContexts');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SampleUtterance]', traits => ['NameInRequest'], request_name => 'sampleUtterances');
  has SlotPriorities => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::SlotPriority]', traits => ['NameInRequest'], request_name => 'slotPriorities');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateIntentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateIntent - Arguments for method UpdateIntent on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntent on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntent.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateIntentResponse = $models - v2 -lex->UpdateIntent(
      BotId          => 'MyId',
      BotVersion     => 'MyDraftBotVersion',
      IntentId       => 'MyId',
      IntentName     => 'MyName',
      LocaleId       => 'MyLocaleId',
      Description    => 'MyDescription',       # OPTIONAL
      DialogCodeHook => {
        Enabled => 1,

      },                                       # OPTIONAL
      FulfillmentCodeHook => {
        Enabled => 1,

      },                                       # OPTIONAL
      InputContexts => [
        {
          Name => 'MyName',                    # min: 1, max: 100

        },
        ...
      ],    # OPTIONAL
      IntentClosingSetting => {
        ClosingResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },

      },    # OPTIONAL
      IntentConfirmationSetting => {
        DeclinationResponse => {
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },
        PromptSpecification => {
          MaxRetries    => 1,     # max: 5
          MessageGroups => [
            {
              Message => {
                CustomPayload => {
                  Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                },    # OPTIONAL
                ImageResponseCard => {
                  Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                  Buttons => [
                    {
                      Text  => 'MyButtonText',     # min: 1, max: 50
                      Value => 'MyButtonValue',    # min: 1, max: 50

                    },
                    ...
                  ],    # max: 5; OPTIONAL
                  ImageUrl => 'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
                  Subtitle => 'MyAttachmentTitle',  # min: 1, max: 250
                },    # OPTIONAL
                PlainTextMessage => {
                  Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
                SsmlMessage => {
                  Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                },    # OPTIONAL
              },
              Variations => [
                {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',     # min: 1, max: 50
                        Value => 'MyButtonValue',    # min: 1, max: 50

                      },
                      ...
                    ],    # max: 5; OPTIONAL
                    ImageUrl => 'MyAttachmentUrl',  # min: 1, max: 250; OPTIONAL
                    Subtitle => 'MyAttachmentTitle',    # min: 1, max: 250
                  },    # OPTIONAL
                  PlainTextMessage => {
                    Value => 'MyPlainTextMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  SsmlMessage => {
                    Value => 'MySSMLMessageValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                },
                ...
              ],    # max: 2; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },

      },    # OPTIONAL
      KendraConfiguration => {
        KendraIndex       => 'MyKendraIndexArn',    # min: 32, max: 2048
        QueryFilterString =>
          'MyQueryFilterString',    # min: 1, max: 5000; OPTIONAL
        QueryFilterStringEnabled => 1,
      },    # OPTIONAL
      OutputContexts => [
        {
          Name                => 'MyName',    # min: 1, max: 100
          TimeToLiveInSeconds => 1,           # min: 5, max: 86400
          TurnsToLive         => 1,           # min: 1, max: 20

        },
        ...
      ],    # OPTIONAL
      ParentIntentSignature => 'MyIntentSignature',    # OPTIONAL
      SampleUtterances      => [
        {
          Utterance => 'MyUtterance',

        },
        ...
      ],                                               # OPTIONAL
      SlotPriorities => [
        {
          Priority => 1,         # max: 25
          SlotId   => 'MyId',    # min: 10, max: 10

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $BotId                = $UpdateIntentResponse->BotId;
    my $BotVersion           = $UpdateIntentResponse->BotVersion;
    my $CreationDateTime     = $UpdateIntentResponse->CreationDateTime;
    my $Description          = $UpdateIntentResponse->Description;
    my $DialogCodeHook       = $UpdateIntentResponse->DialogCodeHook;
    my $FulfillmentCodeHook  = $UpdateIntentResponse->FulfillmentCodeHook;
    my $InputContexts        = $UpdateIntentResponse->InputContexts;
    my $IntentClosingSetting = $UpdateIntentResponse->IntentClosingSetting;
    my $IntentConfirmationSetting =
      $UpdateIntentResponse->IntentConfirmationSetting;
    my $IntentId              = $UpdateIntentResponse->IntentId;
    my $IntentName            = $UpdateIntentResponse->IntentName;
    my $KendraConfiguration   = $UpdateIntentResponse->KendraConfiguration;
    my $LastUpdatedDateTime   = $UpdateIntentResponse->LastUpdatedDateTime;
    my $LocaleId              = $UpdateIntentResponse->LocaleId;
    my $OutputContexts        = $UpdateIntentResponse->OutputContexts;
    my $ParentIntentSignature = $UpdateIntentResponse->ParentIntentSignature;
    my $SampleUtterances      = $UpdateIntentResponse->SampleUtterances;
    my $SlotPriorities        = $UpdateIntentResponse->SlotPriorities;

    # Returns a L<Paws::LexModelsV2::UpdateIntentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateIntent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot that contains the intent.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the intent. Must be C<DRAFT>.



=head2 Description => Str

The new description of the intent.



=head2 DialogCodeHook => L<Paws::LexModelsV2::DialogCodeHookSettings>

The new Lambda function to use between each turn of the conversation
with the bot.



=head2 FulfillmentCodeHook => L<Paws::LexModelsV2::FulfillmentCodeHookSettings>

The new Lambda function to call when all of the intents required slots
are provided and the intent is ready for fulfillment.



=head2 InputContexts => ArrayRef[L<Paws::LexModelsV2::InputContext>]

A new list of contexts that must be active in order for Amazon Lex to
consider the intent.



=head2 IntentClosingSetting => L<Paws::LexModelsV2::IntentClosingSetting>

The new response that Amazon Lex sends the user when the intent is
closed.



=head2 IntentConfirmationSetting => L<Paws::LexModelsV2::IntentConfirmationSetting>

New prompts that Amazon Lex sends to the user to confirm the completion
of an intent.



=head2 B<REQUIRED> IntentId => Str

The unique identifier of the intent to update.



=head2 B<REQUIRED> IntentName => Str

The new name for the intent.



=head2 KendraConfiguration => L<Paws::LexModelsV2::KendraConfiguration>

New configuration settings for connecting to an Amazon Kendra index.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where this intent is used.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 OutputContexts => ArrayRef[L<Paws::LexModelsV2::OutputContext>]

A new list of contexts that Amazon Lex activates when the intent is
fulfilled.



=head2 ParentIntentSignature => Str

The signature of the new built-in intent to use as the parent of this
intent.



=head2 SampleUtterances => ArrayRef[L<Paws::LexModelsV2::SampleUtterance>]

New utterances used to invoke the intent.



=head2 SlotPriorities => ArrayRef[L<Paws::LexModelsV2::SlotPriority>]

A new list of slots and their priorities that are contained by the
intent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntent in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

