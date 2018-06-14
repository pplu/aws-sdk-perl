
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
        SegmentVersion => 1,              # OPTIONAL
        SegmentId      => 'My__string',
        Limits         => {
          MessagesPerSecond => 1,         # OPTIONAL
          Daily             => 1,         # OPTIONAL
          MaximumDuration   => 1,         # OPTIONAL
          Total             => 1,         # OPTIONAL
        },    # OPTIONAL
        HoldoutPercent => 1,    # OPTIONAL
        Hook           => {
          LambdaFunctionName => 'My__string',
          Mode   => 'DELIVERY',     # values: DELIVERY, FILTER; OPTIONAL
          WebUrl => 'My__string',
        },    # OPTIONAL
        AdditionalTreatments => [
          {
            SizePercent => 1,    # OPTIONAL
            Schedule    => {
              Frequency =>
                'ONCE', # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
              Timezone  => 'My__string',
              QuietTime => {
                Start => 'My__string',
                End   => 'My__string',
              },        # OPTIONAL
              StartTime   => 'My__string',
              IsLocalTime => 1,              # OPTIONAL
              EndTime     => 'My__string',
            },    # OPTIONAL
            MessageConfiguration => {
              BaiduMessage => {
                ImageUrl => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                MediaUrl          => 'My__string',
                Title             => 'My__string',
                RawContent        => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                JsonBody          => 'My__string',
              },    # OPTIONAL
              GCMMessage => {
                ImageUrl => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                MediaUrl          => 'My__string',
                Title             => 'My__string',
                RawContent        => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                JsonBody          => 'My__string',
              },    # OPTIONAL
              SMSMessage => {
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                Body     => 'My__string',
                SenderId => 'My__string',
              },    # OPTIONAL
              EmailMessage => {
                FromAddress => 'My__string',
                Body        => 'My__string',
                HtmlBody    => 'My__string',
                Title       => 'My__string',
              },    # OPTIONAL
              APNSMessage => {
                ImageUrl => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                MediaUrl          => 'My__string',
                Title             => 'My__string',
                RawContent        => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                JsonBody          => 'My__string',
              },    # OPTIONAL
              DefaultMessage => {
                ImageUrl => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                MediaUrl          => 'My__string',
                Title             => 'My__string',
                RawContent        => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                JsonBody          => 'My__string',
              },    # OPTIONAL
              ADMMessage => {
                ImageUrl => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Body              => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                MediaUrl          => 'My__string',
                Title             => 'My__string',
                RawContent        => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                JsonBody          => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            TreatmentDescription => 'My__string',
            TreatmentName        => 'My__string',
          },
          ...
        ],        # OPTIONAL
        Schedule => {
          Frequency =>
            'ONCE',    # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
          Timezone  => 'My__string',
          QuietTime => {
            Start => 'My__string',
            End   => 'My__string',
          },           # OPTIONAL
          StartTime   => 'My__string',
          IsLocalTime => 1,              # OPTIONAL
          EndTime     => 'My__string',
        },    # OPTIONAL
        IsPaused             => 1,    # OPTIONAL
        MessageConfiguration => {
          BaiduMessage => {
            ImageUrl => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            MediaUrl          => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            JsonBody          => 'My__string',
          },    # OPTIONAL
          GCMMessage => {
            ImageUrl => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            MediaUrl          => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            JsonBody          => 'My__string',
          },    # OPTIONAL
          SMSMessage => {
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            Body     => 'My__string',
            SenderId => 'My__string',
          },    # OPTIONAL
          EmailMessage => {
            FromAddress => 'My__string',
            Body        => 'My__string',
            HtmlBody    => 'My__string',
            Title       => 'My__string',
          },    # OPTIONAL
          APNSMessage => {
            ImageUrl => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            MediaUrl          => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            JsonBody          => 'My__string',
          },    # OPTIONAL
          DefaultMessage => {
            ImageUrl => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            MediaUrl          => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            JsonBody          => 'My__string',
          },    # OPTIONAL
          ADMMessage => {
            ImageUrl => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Body   => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            MediaUrl          => 'My__string',
            Title             => 'My__string',
            RawContent        => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            JsonBody          => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        TreatmentDescription => 'My__string',
        TreatmentName        => 'My__string',
        Name                 => 'My__string',
        Description          => 'My__string',
      },

    );

    # Results:
    my $CampaignResponse = $UpdateCampaignResponse->CampaignResponse;

    # Returns a L<Paws::Pinpoint::UpdateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> CampaignId => Str





=head2 B<REQUIRED> WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaign in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

