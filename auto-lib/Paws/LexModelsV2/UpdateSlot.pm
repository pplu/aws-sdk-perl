
package Paws::LexModelsV2::UpdateSlot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IntentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has ObfuscationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::ObfuscationSetting', traits => ['NameInRequest'], request_name => 'obfuscationSetting');
  has SlotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'slotId', required => 1);
  has SlotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotName', required => 1);
  has SlotTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'slotTypeId', required => 1);
  has ValueElicitationSetting => (is => 'ro', isa => 'Paws::LexModelsV2::SlotValueElicitationSetting', traits => ['NameInRequest'], request_name => 'valueElicitationSetting', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSlot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateSlotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateSlot - Arguments for method UpdateSlot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSlot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateSlot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSlot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateSlotResponse = $models - v2 -lex->UpdateSlot(
      BotId                   => 'MyId',
      BotVersion              => 'MyDraftBotVersion',
      IntentId                => 'MyId',
      LocaleId                => 'MyLocaleId',
      SlotId                  => 'MyId',
      SlotName                => 'MyName',
      SlotTypeId              => 'MyBuiltInOrCustomSlotTypeId',
      ValueElicitationSetting => {
        SlotConstraint            => 'Required',    # values: Required, Optional
        DefaultValueSpecification => {
          DefaultValueList => [
            {
              DefaultValue => 'MySlotDefaultValueString',    # min: 1, max: 202

            },
            ...
          ],                                                 # max: 10

        },    # OPTIONAL
        PromptSpecification => {
          MaxRetries    => 1,    # max: 5
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
                      Text  => 'MyButtonText',       # min: 1, max: 50
                      Value => 'MyButtonValue',      # min: 1, max: 50

                    },
                    ...
                  ],                                 # max: 5; OPTIONAL
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
                        Text  => 'MyButtonText',       # min: 1, max: 50
                        Value => 'MyButtonValue',      # min: 1, max: 50

                      },
                      ...
                    ],                                 # max: 5; OPTIONAL
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
              ],        # max: 2; OPTIONAL
            },
            ...
          ],            # min: 1, max: 5
          AllowInterrupt => 1,    # OPTIONAL
        },    # OPTIONAL
        SampleUtterances => [
          {
            Utterance => 'MyUtterance',

          },
          ...
        ],    # OPTIONAL
        WaitAndContinueSpecification => {
          ContinueResponse => {
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
                        Text  => 'MyButtonText',       # min: 1, max: 50
                        Value => 'MyButtonValue',      # min: 1, max: 50

                      },
                      ...
                    ],                                 # max: 5; OPTIONAL
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
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',       # min: 1, max: 50
                          Value => 'MyButtonValue',      # min: 1, max: 50

                        },
                        ...
                      ],                                 # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
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
                ],        # max: 2; OPTIONAL
              },
              ...
            ],            # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },
          WaitingResponse => {
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
                        Text  => 'MyButtonText',       # min: 1, max: 50
                        Value => 'MyButtonValue',      # min: 1, max: 50

                      },
                      ...
                    ],                                 # max: 5; OPTIONAL
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
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',       # min: 1, max: 50
                          Value => 'MyButtonValue',      # min: 1, max: 50

                        },
                        ...
                      ],                                 # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
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
                ],        # max: 2; OPTIONAL
              },
              ...
            ],            # min: 1, max: 5
            AllowInterrupt => 1,    # OPTIONAL
          },
          StillWaitingResponse => {
            FrequencyInSeconds => 1,    # min: 1, max: 300
            MessageGroups      => [
              {
                Message => {
                  CustomPayload => {
                    Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                  },    # OPTIONAL
                  ImageResponseCard => {
                    Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                    Buttons => [
                      {
                        Text  => 'MyButtonText',       # min: 1, max: 50
                        Value => 'MyButtonValue',      # min: 1, max: 50

                      },
                      ...
                    ],                                 # max: 5; OPTIONAL
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
                Variations => [
                  {
                    CustomPayload => {
                      Value => 'MyCustomPayloadValue',    # min: 1, max: 1000

                    },    # OPTIONAL
                    ImageResponseCard => {
                      Title   => 'MyAttachmentTitle',    # min: 1, max: 250
                      Buttons => [
                        {
                          Text  => 'MyButtonText',       # min: 1, max: 50
                          Value => 'MyButtonValue',      # min: 1, max: 50

                        },
                        ...
                      ],                                 # max: 5; OPTIONAL
                      ImageUrl =>
                        'MyAttachmentUrl',    # min: 1, max: 250; OPTIONAL
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
                ],        # max: 2; OPTIONAL
              },
              ...
            ],            # min: 1, max: 5
            TimeoutInSeconds => 1,    # min: 1, max: 900
            AllowInterrupt   => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Description        => 'MyDescription',    # OPTIONAL
      ObfuscationSetting => {
        ObfuscationSettingType => 'None',    # values: None, DefaultObfuscation

      },    # OPTIONAL
    );

    # Results:
    my $BotId                   = $UpdateSlotResponse->BotId;
    my $BotVersion              = $UpdateSlotResponse->BotVersion;
    my $CreationDateTime        = $UpdateSlotResponse->CreationDateTime;
    my $Description             = $UpdateSlotResponse->Description;
    my $IntentId                = $UpdateSlotResponse->IntentId;
    my $LastUpdatedDateTime     = $UpdateSlotResponse->LastUpdatedDateTime;
    my $LocaleId                = $UpdateSlotResponse->LocaleId;
    my $ObfuscationSetting      = $UpdateSlotResponse->ObfuscationSetting;
    my $SlotId                  = $UpdateSlotResponse->SlotId;
    my $SlotName                = $UpdateSlotResponse->SlotName;
    my $SlotTypeId              = $UpdateSlotResponse->SlotTypeId;
    my $ValueElicitationSetting = $UpdateSlotResponse->ValueElicitationSetting;

    # Returns a L<Paws::LexModelsV2::UpdateSlotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateSlot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that contains the slot.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot that contains the slot. Must always be C<DRAFT>.



=head2 Description => Str

The new description for the slot.



=head2 B<REQUIRED> IntentId => Str

The identifier of the intent that contains the slot.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale that contains the slot. The
string must match one of the supported locales. For more information,
see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 ObfuscationSetting => L<Paws::LexModelsV2::ObfuscationSetting>

New settings that determine how slot values are formatted in Amazon
CloudWatch logs.



=head2 B<REQUIRED> SlotId => Str

The unique identifier for the slot to update.



=head2 B<REQUIRED> SlotName => Str

The new name for the slot.



=head2 B<REQUIRED> SlotTypeId => Str

The unique identifier of the new slot type to associate with this slot.



=head2 B<REQUIRED> ValueElicitationSetting => L<Paws::LexModelsV2::SlotValueElicitationSetting>

A new set of prompts that Amazon Lex sends to the user to elicit a
response the provides a value for the slot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSlot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

