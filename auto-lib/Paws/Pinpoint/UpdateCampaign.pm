
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
            TreatmentName        => 'My__string',
            TreatmentDescription => 'My__string',
            MessageConfiguration => {
              EmailMessage => {
                FromAddress => 'My__string',
                Title       => 'My__string',
                HtmlBody    => 'My__string',
                Body        => 'My__string',
              },    # OPTIONAL
              ADMMessage => {
                Title             => 'My__string',
                MediaUrl          => 'My__string',
                JsonBody          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                ImageIconUrl      => 'My__string',
                Body              => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Url => 'My__string',
              },    # OPTIONAL
              DefaultMessage => {
                Title             => 'My__string',
                MediaUrl          => 'My__string',
                JsonBody          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                ImageIconUrl      => 'My__string',
                Body              => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Url => 'My__string',
              },    # OPTIONAL
              BaiduMessage => {
                Title             => 'My__string',
                MediaUrl          => 'My__string',
                JsonBody          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                ImageIconUrl      => 'My__string',
                Body              => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Url => 'My__string',
              },    # OPTIONAL
              SMSMessage => {
                Body        => 'My__string',
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                SenderId => 'My__string',
              },    # OPTIONAL
              GCMMessage => {
                Title             => 'My__string',
                MediaUrl          => 'My__string',
                JsonBody          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                ImageIconUrl      => 'My__string',
                Body              => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Url => 'My__string',
              },    # OPTIONAL
              APNSMessage => {
                Title             => 'My__string',
                MediaUrl          => 'My__string',
                JsonBody          => 'My__string',
                RawContent        => 'My__string',
                SilentPush        => 1,              # OPTIONAL
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
                ImageIconUrl      => 'My__string',
                Body              => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                Url => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            Schedule => {
              QuietTime => {
                Start => 'My__string',
                End   => 'My__string',
              },    # OPTIONAL
              IsLocalTime => 1,    # OPTIONAL
              Frequency =>
                'ONCE', # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
              StartTime => 'My__string',
              Timezone  => 'My__string',
              EndTime   => 'My__string',
            },    # OPTIONAL
            SizePercent => 1,    # OPTIONAL
          },
          ...
        ],                       # OPTIONAL
        SegmentId      => 'My__string',
        SegmentVersion => 1,              # OPTIONAL
        Schedule       => {
          QuietTime => {
            Start => 'My__string',
            End   => 'My__string',
          },                              # OPTIONAL
          IsLocalTime => 1,               # OPTIONAL
          Frequency =>
            'ONCE',    # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
          StartTime => 'My__string',
          Timezone  => 'My__string',
          EndTime   => 'My__string',
        },    # OPTIONAL
        IsPaused       => 1,    # OPTIONAL
        HoldoutPercent => 1,    # OPTIONAL
        Hook           => {
          WebUrl => 'My__string',
          Mode   => 'DELIVERY',     # values: DELIVERY, FILTER; OPTIONAL
          LambdaFunctionName => 'My__string',
        },    # OPTIONAL
        Description => 'My__string',
        Name        => 'My__string',
        Limits      => {
          MessagesPerSecond => 1,    # OPTIONAL
          MaximumDuration   => 1,    # OPTIONAL
          Daily             => 1,    # OPTIONAL
          Total             => 1,    # OPTIONAL
        },    # OPTIONAL
        TreatmentName        => 'My__string',
        TreatmentDescription => 'My__string',
        MessageConfiguration => {
          EmailMessage => {
            FromAddress => 'My__string',
            Title       => 'My__string',
            HtmlBody    => 'My__string',
            Body        => 'My__string',
          },    # OPTIONAL
          ADMMessage => {
            Title             => 'My__string',
            MediaUrl          => 'My__string',
            JsonBody          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            ImageIconUrl      => 'My__string',
            Body              => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Url    => 'My__string',
          },    # OPTIONAL
          DefaultMessage => {
            Title             => 'My__string',
            MediaUrl          => 'My__string',
            JsonBody          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            ImageIconUrl      => 'My__string',
            Body              => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Url    => 'My__string',
          },    # OPTIONAL
          BaiduMessage => {
            Title             => 'My__string',
            MediaUrl          => 'My__string',
            JsonBody          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            ImageIconUrl      => 'My__string',
            Body              => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Url    => 'My__string',
          },    # OPTIONAL
          SMSMessage => {
            Body => 'My__string',
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            SenderId => 'My__string',
          },    # OPTIONAL
          GCMMessage => {
            Title             => 'My__string',
            MediaUrl          => 'My__string',
            JsonBody          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            ImageIconUrl      => 'My__string',
            Body              => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Url    => 'My__string',
          },    # OPTIONAL
          APNSMessage => {
            Title             => 'My__string',
            MediaUrl          => 'My__string',
            JsonBody          => 'My__string',
            RawContent        => 'My__string',
            SilentPush        => 1,              # OPTIONAL
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
            ImageIconUrl      => 'My__string',
            Body              => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            Url    => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
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

