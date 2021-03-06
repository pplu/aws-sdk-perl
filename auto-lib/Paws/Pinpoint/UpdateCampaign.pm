
package Paws::Pinpoint::UpdateCampaign;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has CampaignId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'campaign-id', required => 1);
  has WriteCampaignRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteCampaignRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteCampaignRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/campaigns/{campaign-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateCampaignResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateCampaign - Arguments for method UpdateCampaign on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaign on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaign.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateCampaignResponse = $pinpoint->UpdateCampaign(
      ApplicationId        => 'My__string',
      CampaignId           => 'My__string',
      WriteCampaignRequest => {
        AdditionalTreatments => [
          {
            SizePercent                 => 1,
            CustomDeliveryConfiguration => {
              DeliveryUri   => 'My__string',
              EndpointTypes => [
                'PUSH',
                ... # values: PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
              ],    # OPTIONAL
            },    # OPTIONAL
            MessageConfiguration => {
              ADMMessage => {
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                ImageIconUrl      => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                JsonBody          => 'My__string',
                MediaUrl          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                TimeToLive        => 1,
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              APNSMessage => {
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                ImageIconUrl      => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                JsonBody          => 'My__string',
                MediaUrl          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                TimeToLive        => 1,
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              BaiduMessage => {
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                ImageIconUrl      => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                JsonBody          => 'My__string',
                MediaUrl          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                TimeToLive        => 1,
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              CustomMessage  => { Data => 'My__string', },    # OPTIONAL
              DefaultMessage => {
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                ImageIconUrl      => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                JsonBody          => 'My__string',
                MediaUrl          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                TimeToLive        => 1,
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              EmailMessage => {
                Body        => 'My__string',
                FromAddress => 'My__string',
                HtmlBody    => 'My__string',
                Title       => 'My__string',
              },    # OPTIONAL
              GCMMessage => {
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                ImageIconUrl      => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                JsonBody          => 'My__string',
                MediaUrl          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                TimeToLive        => 1,
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              SMSMessage => {
                Body        => 'My__string',
                EntityId    => 'My__string',
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                OriginationNumber => 'My__string',
                SenderId          => 'My__string',
                TemplateId        => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            Schedule => {
              StartTime   => 'My__string',
              EndTime     => 'My__string',
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
                },
                FilterType => 'SYSTEM',    # values: SYSTEM, ENDPOINT

              },    # OPTIONAL
              Frequency => 'ONCE'
              ,  # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT; OPTIONAL
              IsLocalTime => 1,    # OPTIONAL
              QuietTime   => {
                End   => 'My__string',
                Start => 'My__string',
              },                   # OPTIONAL
              Timezone => 'My__string',
            },    # OPTIONAL
            TemplateConfiguration => {
              EmailTemplate => {
                Name    => 'My__string',
                Version => 'My__string',
              },    # OPTIONAL
              PushTemplate => {
                Name    => 'My__string',
                Version => 'My__string',
              },    # OPTIONAL
              SMSTemplate => {
                Name    => 'My__string',
                Version => 'My__string',
              },    # OPTIONAL
              VoiceTemplate => {
                Name    => 'My__string',
                Version => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            TreatmentDescription => 'My__string',
            TreatmentName        => 'My__string',
          },
          ...
        ],    # OPTIONAL
        CustomDeliveryConfiguration => {
          DeliveryUri   => 'My__string',
          EndpointTypes => [
            'PUSH',
            ... # values: PUSH, GCM, APNS, APNS_SANDBOX, APNS_VOIP, APNS_VOIP_SANDBOX, ADM, SMS, VOICE, EMAIL, BAIDU, CUSTOM
          ],    # OPTIONAL
        },    # OPTIONAL
        Description    => 'My__string',
        HoldoutPercent => 1,
        Hook           => {
          LambdaFunctionName => 'My__string',
          Mode   => 'DELIVERY',     # values: DELIVERY, FILTER; OPTIONAL
          WebUrl => 'My__string',
        },    # OPTIONAL
        IsPaused => 1,    # OPTIONAL
        Limits   => {
          Daily             => 1,
          MaximumDuration   => 1,
          MessagesPerSecond => 1,
          Total             => 1,
        },                # OPTIONAL
        MessageConfiguration => {
          ADMMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl      => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            JsonBody          => 'My__string',
            MediaUrl          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            TimeToLive        => 1,
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          APNSMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl      => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            JsonBody          => 'My__string',
            MediaUrl          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            TimeToLive        => 1,
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          BaiduMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl      => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            JsonBody          => 'My__string',
            MediaUrl          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            TimeToLive        => 1,
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          CustomMessage  => { Data => 'My__string', },    # OPTIONAL
          DefaultMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl      => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            JsonBody          => 'My__string',
            MediaUrl          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            TimeToLive        => 1,
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          EmailMessage => {
            Body        => 'My__string',
            FromAddress => 'My__string',
            HtmlBody    => 'My__string',
            Title       => 'My__string',
          },    # OPTIONAL
          GCMMessage => {
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            ImageIconUrl      => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            JsonBody          => 'My__string',
            MediaUrl          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            TimeToLive        => 1,
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          SMSMessage => {
            Body        => 'My__string',
            EntityId    => 'My__string',
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            OriginationNumber => 'My__string',
            SenderId          => 'My__string',
            TemplateId        => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        Name     => 'My__string',
        Schedule => {
          StartTime   => 'My__string',
          EndTime     => 'My__string',
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
            },
            FilterType => 'SYSTEM',    # values: SYSTEM, ENDPOINT

          },    # OPTIONAL
          Frequency => 'ONCE'
          ,     # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT; OPTIONAL
          IsLocalTime => 1,    # OPTIONAL
          QuietTime   => {
            End   => 'My__string',
            Start => 'My__string',
          },                   # OPTIONAL
          Timezone => 'My__string',
        },    # OPTIONAL
        SegmentId             => 'My__string',
        SegmentVersion        => 1,
        Tags                  => { 'My__string' => 'My__string', },   # OPTIONAL
        TemplateConfiguration => {
          EmailTemplate => {
            Name    => 'My__string',
            Version => 'My__string',
          },                                                          # OPTIONAL
          PushTemplate => {
            Name    => 'My__string',
            Version => 'My__string',
          },                                                          # OPTIONAL
          SMSTemplate => {
            Name    => 'My__string',
            Version => 'My__string',
          },                                                          # OPTIONAL
          VoiceTemplate => {
            Name    => 'My__string',
            Version => 'My__string',
          },                                                          # OPTIONAL
        },    # OPTIONAL
        TreatmentDescription => 'My__string',
        TreatmentName        => 'My__string',
      },

    );

    # Results:
    my $CampaignResponse = $UpdateCampaignResponse->CampaignResponse;

    # Returns a L<Paws::Pinpoint::UpdateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> CampaignId => Str

The unique identifier for the campaign.



=head2 B<REQUIRED> WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaign in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

