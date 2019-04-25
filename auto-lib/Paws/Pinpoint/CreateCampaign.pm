
package Paws::Pinpoint::CreateCampaign;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has WriteCampaignRequest => (is => 'ro', isa => 'Paws::Pinpoint::WriteCampaignRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'WriteCampaignRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/campaigns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateCampaignResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateCampaign - Arguments for method CreateCampaign on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCampaign on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCampaign.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateCampaignResponse = $pinpoint->CreateCampaign(
      ApplicationId        => 'My__string',
      WriteCampaignRequest => {
        AdditionalTreatments => [
          {
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
                TimeToLive        => 1,              # OPTIONAL
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
                TimeToLive        => 1,              # OPTIONAL
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
                TimeToLive        => 1,              # OPTIONAL
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
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
                TimeToLive        => 1,              # OPTIONAL
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
                TimeToLive        => 1,              # OPTIONAL
                Title             => 'My__string',
                Url               => 'My__string',
              },    # OPTIONAL
              SMSMessage => {
                Body        => 'My__string',
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                SenderId => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            Schedule => {
              EndTime     => 'My__string',
              EventFilter => {
                Dimensions => {
                  Attributes => {
                    'My__string' => {
                      AttributeType =>
                        'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                      Values => [ 'My__string', ... ],    # OPTIONAL
                    },
                  },    # OPTIONAL
                  EventType => {
                    DimensionType =>
                      'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                    Values => [ 'My__string', ... ],    # OPTIONAL
                  },    # OPTIONAL
                  Metrics => {
                    'My__string' => {
                      ComparisonOperator => 'My__string',
                      Value              => 1,              # OPTIONAL
                    },
                  },    # OPTIONAL
                },    # OPTIONAL
                FilterType => 'SYSTEM',    # values: SYSTEM, ENDPOINT; OPTIONAL
              },    # OPTIONAL
              Frequency => 'ONCE'
              ,  # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT; OPTIONAL
              IsLocalTime => 1,    # OPTIONAL
              QuietTime   => {
                End   => 'My__string',
                Start => 'My__string',
              },                   # OPTIONAL
              StartTime => 'My__string',
              Timezone  => 'My__string',
            },    # OPTIONAL
            SizePercent          => 1,              # OPTIONAL
            TreatmentDescription => 'My__string',
            TreatmentName        => 'My__string',
          },
          ...
        ],                                          # OPTIONAL
        Description    => 'My__string',
        HoldoutPercent => 1,                        # OPTIONAL
        Hook           => {
          LambdaFunctionName => 'My__string',
          Mode   => 'DELIVERY',     # values: DELIVERY, FILTER; OPTIONAL
          WebUrl => 'My__string',
        },    # OPTIONAL
        IsPaused => 1,    # OPTIONAL
        Limits   => {
          Daily             => 1,    # OPTIONAL
          MaximumDuration   => 1,    # OPTIONAL
          MessagesPerSecond => 1,    # OPTIONAL
          Total             => 1,    # OPTIONAL
        },    # OPTIONAL
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
            TimeToLive        => 1,              # OPTIONAL
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
            TimeToLive        => 1,              # OPTIONAL
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
            TimeToLive        => 1,              # OPTIONAL
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
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
            TimeToLive        => 1,              # OPTIONAL
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
            TimeToLive        => 1,              # OPTIONAL
            Title             => 'My__string',
            Url               => 'My__string',
          },    # OPTIONAL
          SMSMessage => {
            Body => 'My__string',
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            SenderId => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        Name     => 'My__string',
        Schedule => {
          EndTime     => 'My__string',
          EventFilter => {
            Dimensions => {
              Attributes => {
                'My__string' => {
                  AttributeType =>
                    'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                  Values => [ 'My__string', ... ],    # OPTIONAL
                },
              },    # OPTIONAL
              EventType => {
                DimensionType =>
                  'INCLUSIVE',    # values: INCLUSIVE, EXCLUSIVE; OPTIONAL
                Values => [ 'My__string', ... ],    # OPTIONAL
              },    # OPTIONAL
              Metrics => {
                'My__string' => {
                  ComparisonOperator => 'My__string',
                  Value              => 1,              # OPTIONAL
                },
              },    # OPTIONAL
            },    # OPTIONAL
            FilterType => 'SYSTEM',    # values: SYSTEM, ENDPOINT; OPTIONAL
          },    # OPTIONAL
          Frequency => 'ONCE'
          ,     # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY, EVENT; OPTIONAL
          IsLocalTime => 1,    # OPTIONAL
          QuietTime   => {
            End   => 'My__string',
            Start => 'My__string',
          },                   # OPTIONAL
          StartTime => 'My__string',
          Timezone  => 'My__string',
        },    # OPTIONAL
        SegmentId            => 'My__string',
        SegmentVersion       => 1,              # OPTIONAL
        TreatmentDescription => 'My__string',
        TreatmentName        => 'My__string',
      },

    );

    # Results:
    my $CampaignResponse = $CreateCampaignResponse->CampaignResponse;

    # Returns a L<Paws::Pinpoint::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

