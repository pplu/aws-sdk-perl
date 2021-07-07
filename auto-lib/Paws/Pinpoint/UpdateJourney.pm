
package Paws::Pinpoint::UpdateJourney;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has JourneyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'journey-id', required => 1);
  has WriteJourneyRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteJourneyRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteJourneyRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJourney');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/journeys/{journey-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateJourneyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateJourney - Arguments for method UpdateJourney on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJourney on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateJourney.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJourney.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateJourneyResponse = $pinpoint->UpdateJourney(
      ApplicationId       => 'My__string',
      JourneyId           => 'My__string',
      WriteJourneyRequest => {
        Name       => 'My__string',
        Activities => {
          'My__string' => {
            CUSTOM => {
              DeliveryUri   => 'My__string',
              EndpointTypes => [
                'PUSH',
                ... # values: PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
              ],    # OPTIONAL
              MessageConfig   => { Data => 'My__string', },    # OPTIONAL
              NextActivity    => 'My__string',
              TemplateName    => 'My__string',
              TemplateVersion => 'My__string',
            },    # OPTIONAL
            ConditionalSplit => {
              Condition => {
                Conditions => [
                  {
                    EventCondition => {
                      Dimensions => {
                        Attributes => {
                          'My__string' => {
                            Values        => [ 'My__string', ... ],
                            AttributeType => 'INCLUSIVE'
                            , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                          },
                        },    # OPTIONAL
                        EventType => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Metrics => {
                          'My__string' => {
                            ComparisonOperator => 'My__string',
                            Value              => 1,

                          },
                        },    # OPTIONAL
                      },    # OPTIONAL
                      MessageActivity => 'My__string',
                    },    # OPTIONAL
                    SegmentCondition => {
                      SegmentId => 'My__string',

                    },    # OPTIONAL
                    SegmentDimensions => {
                      Attributes => {
                        'My__string' => {
                          Values        => [ 'My__string', ... ],
                          AttributeType => 'INCLUSIVE'
                          , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                        },
                      },    # OPTIONAL
                      Behavior => {
                        Recency => {
                          Duration =>
                            'HR_24',    # values: HR_24, DAY_7, DAY_14, DAY_30
                          RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Demographic => {
                        AppVersion => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Channel => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        DeviceType => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Make => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Model => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Platform => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Location => {
                        Country => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        GPSPoint => {
                          Coordinates => {
                            Latitude  => 1,
                            Longitude => 1,

                          },
                          RangeInKilometers => 1,
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Metrics => {
                        'My__string' => {
                          ComparisonOperator => 'My__string',
                          Value              => 1,

                        },
                      },    # OPTIONAL
                      UserAttributes => {
                        'My__string' => {
                          Values        => [ 'My__string', ... ],
                          AttributeType => 'INCLUSIVE'
                          , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                        },
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                Operator => 'ALL',    # values: ALL, ANY; OPTIONAL
              },    # OPTIONAL
              EvaluationWaitTime => {
                WaitFor   => 'My__string',
                WaitUntil => 'My__string',
              },    # OPTIONAL
              FalseActivity => 'My__string',
              TrueActivity  => 'My__string',
            },    # OPTIONAL
            Description => 'My__string',
            EMAIL       => {
              MessageConfig   => { FromAddress => 'My__string', },    # OPTIONAL
              NextActivity    => 'My__string',
              TemplateName    => 'My__string',
              TemplateVersion => 'My__string',
            },    # OPTIONAL
            Holdout => {
              Percentage   => 1,
              NextActivity => 'My__string',
            },    # OPTIONAL
            MultiCondition => {
              Branches => [
                {
                  Condition => {
                    EventCondition => {
                      Dimensions => {
                        Attributes => {
                          'My__string' => {
                            Values        => [ 'My__string', ... ],
                            AttributeType => 'INCLUSIVE'
                            , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                          },
                        },    # OPTIONAL
                        EventType => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Metrics => {
                          'My__string' => {
                            ComparisonOperator => 'My__string',
                            Value              => 1,

                          },
                        },    # OPTIONAL
                      },    # OPTIONAL
                      MessageActivity => 'My__string',
                    },    # OPTIONAL
                    SegmentCondition => {
                      SegmentId => 'My__string',

                    },    # OPTIONAL
                    SegmentDimensions => {
                      Attributes => {
                        'My__string' => {
                          Values        => [ 'My__string', ... ],
                          AttributeType => 'INCLUSIVE'
                          , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                        },
                      },    # OPTIONAL
                      Behavior => {
                        Recency => {
                          Duration =>
                            'HR_24',    # values: HR_24, DAY_7, DAY_14, DAY_30
                          RecencyType => 'ACTIVE',    # values: ACTIVE, INACTIVE

                        },    # OPTIONAL
                      },    # OPTIONAL
                      Demographic => {
                        AppVersion => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Channel => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        DeviceType => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Make => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Model => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        Platform => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Location => {
                        Country => {
                          Values        => [ 'My__string', ... ],
                          DimensionType => 'INCLUSIVE'
                          ,    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                        },    # OPTIONAL
                        GPSPoint => {
                          Coordinates => {
                            Latitude  => 1,
                            Longitude => 1,

                          },
                          RangeInKilometers => 1,
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Metrics => {
                        'My__string' => {
                          ComparisonOperator => 'My__string',
                          Value              => 1,

                        },
                      },    # OPTIONAL
                      UserAttributes => {
                        'My__string' => {
                          Values        => [ 'My__string', ... ],
                          AttributeType => 'INCLUSIVE'
                          , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                        },
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },
                  NextActivity => 'My__string',
                },
                ...
              ],    # OPTIONAL
              DefaultActivity    => 'My__string',
              EvaluationWaitTime => {
                WaitFor   => 'My__string',
                WaitUntil => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            PUSH => {
              MessageConfig   => { TimeToLive => 'My__string', },    # OPTIONAL
              NextActivity    => 'My__string',
              TemplateName    => 'My__string',
              TemplateVersion => 'My__string',
            },    # OPTIONAL
            RandomSplit => {
              Branches => [
                {
                  NextActivity => 'My__string',
                  Percentage   => 1,
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            SMS => {
              MessageConfig => {
                EntityId    => 'My__string',
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                OriginationNumber => 'My__string',
                SenderId          => 'My__string',
                TemplateId        => 'My__string',
              },    # OPTIONAL
              NextActivity    => 'My__string',
              TemplateName    => 'My__string',
              TemplateVersion => 'My__string',
            },    # OPTIONAL
            Wait => {
              NextActivity => 'My__string',
              WaitTime     => {
                WaitFor   => 'My__string',
                WaitUntil => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
          },
        },    # OPTIONAL
        CreationDate     => 'My__string',
        LastModifiedDate => 'My__string',
        Limits           => {
          DailyCap                => 1,
          EndpointReentryCap      => 1,
          EndpointReentryInterval => 'My__string',
          MessagesPerSecond       => 1,
        },    # OPTIONAL
        LocalTime => 1,    # OPTIONAL
        QuietTime => {
          End   => 'My__string',
          Start => 'My__string',
        },                 # OPTIONAL
        RefreshFrequency       => 'My__string',
        RefreshOnSegmentUpdate => 1,              # OPTIONAL
        Schedule               => {
          EndTime   => '1970-01-01T01:00:00',     # OPTIONAL
          StartTime => '1970-01-01T01:00:00',     # OPTIONAL
          Timezone  => 'My__string',
        },    # OPTIONAL
        StartActivity  => 'My__string',
        StartCondition => {
          Description         => 'My__string',
          EventStartCondition => {
            EventFilter => {
              Dimensions => {
                Attributes => {
                  'My__string' => {
                    Values        => [ 'My__string', ... ],
                    AttributeType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEFORE, AFTER, ON, BETWEEN; OPTIONAL
                  },
                },    # OPTIONAL
                EventType => {
                  Values        => [ 'My__string', ... ],
                  DimensionType =>
                    'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                },    # OPTIONAL
                Metrics => {
                  'My__string' => {
                    ComparisonOperator => 'My__string',
                    Value              => 1,

                  },
                },    # OPTIONAL
              },    # OPTIONAL
              FilterType => 'SYSTEM',    # values: SYSTEM, ENDPOINT

            },    # OPTIONAL
            SegmentId => 'My__string',
          },    # OPTIONAL
          SegmentStartCondition => {
            SegmentId => 'My__string',

          },    # OPTIONAL
        },    # OPTIONAL
        State => 'DRAFT'
        , # values: DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED, PAUSED; OPTIONAL
        WaitForQuietTime => 1,    # OPTIONAL
      },

    );

    # Results:
    my $JourneyResponse = $UpdateJourneyResponse->JourneyResponse;

    # Returns a L<Paws::Pinpoint::UpdateJourneyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateJourney>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> JourneyId => Str

The unique identifier for the journey.



=head2 B<REQUIRED> WriteJourneyRequest => L<Paws::Pinpoint::WriteJourneyRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJourney in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

