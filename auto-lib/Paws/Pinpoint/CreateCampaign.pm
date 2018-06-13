
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
        Schedule => {
          QuietTime => {
            End   => 'My__string',
            Start => 'My__string',
          },    # OPTIONAL
          EndTime   => 'My__string',
          Timezone  => 'My__string',
          StartTime => 'My__string',
          Frequency =>
            'ONCE',    # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
          IsLocalTime => 1,    # OPTIONAL
        },    # OPTIONAL
        IsPaused       => 1,    # OPTIONAL
        HoldoutPercent => 1,    # OPTIONAL
        Hook           => {
          Mode => 'DELIVERY',    # values: DELIVERY, FILTER; OPTIONAL
          LambdaFunctionName => 'My__string',
          WebUrl             => 'My__string',
        },    # OPTIONAL
        Description => 'My__string',
        Name        => 'My__string',
        Limits      => {
          Total             => 1,    # OPTIONAL
          Daily             => 1,    # OPTIONAL
          MessagesPerSecond => 1,    # OPTIONAL
          MaximumDuration   => 1,    # OPTIONAL
        },    # OPTIONAL
        TreatmentName        => 'My__string',
        TreatmentDescription => 'My__string',
        MessageConfiguration => {
          ADMMessage => {
            MediaUrl   => 'My__string',
            Title      => 'My__string',
            JsonBody   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            RawContent => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
          },    # OPTIONAL
          DefaultMessage => {
            MediaUrl   => 'My__string',
            Title      => 'My__string',
            JsonBody   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            RawContent => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
          },    # OPTIONAL
          EmailMessage => {
            Body        => 'My__string',
            HtmlBody    => 'My__string',
            FromAddress => 'My__string',
            Title       => 'My__string',
          },    # OPTIONAL
          SMSMessage => {
            Body => 'My__string',
            MessageType =>
              'TRANSACTIONAL',    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
            SenderId => 'My__string',
          },    # OPTIONAL
          GCMMessage => {
            MediaUrl   => 'My__string',
            Title      => 'My__string',
            JsonBody   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            RawContent => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
          },    # OPTIONAL
          APNSMessage => {
            MediaUrl   => 'My__string',
            Title      => 'My__string',
            JsonBody   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            RawContent => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
          },    # OPTIONAL
          BaiduMessage => {
            MediaUrl   => 'My__string',
            Title      => 'My__string',
            JsonBody   => 'My__string',
            SilentPush => 1,              # OPTIONAL
            RawContent => 'My__string',
            Body       => 'My__string',
            Action => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
            ImageIconUrl      => 'My__string',
            Url               => 'My__string',
            ImageSmallIconUrl => 'My__string',
            ImageUrl          => 'My__string',
          },    # OPTIONAL
        },    # OPTIONAL
        AdditionalTreatments => [
          {
            TreatmentDescription => 'My__string',
            TreatmentName        => 'My__string',
            MessageConfiguration => {
              ADMMessage => {
                MediaUrl   => 'My__string',
                Title      => 'My__string',
                JsonBody   => 'My__string',
                SilentPush => 1,              # OPTIONAL
                RawContent => 'My__string',
                Body       => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
              },    # OPTIONAL
              DefaultMessage => {
                MediaUrl   => 'My__string',
                Title      => 'My__string',
                JsonBody   => 'My__string',
                SilentPush => 1,              # OPTIONAL
                RawContent => 'My__string',
                Body       => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
              },    # OPTIONAL
              EmailMessage => {
                Body        => 'My__string',
                HtmlBody    => 'My__string',
                FromAddress => 'My__string',
                Title       => 'My__string',
              },    # OPTIONAL
              SMSMessage => {
                Body        => 'My__string',
                MessageType => 'TRANSACTIONAL'
                ,    # values: TRANSACTIONAL, PROMOTIONAL; OPTIONAL
                SenderId => 'My__string',
              },    # OPTIONAL
              GCMMessage => {
                MediaUrl   => 'My__string',
                Title      => 'My__string',
                JsonBody   => 'My__string',
                SilentPush => 1,              # OPTIONAL
                RawContent => 'My__string',
                Body       => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
              },    # OPTIONAL
              APNSMessage => {
                MediaUrl   => 'My__string',
                Title      => 'My__string',
                JsonBody   => 'My__string',
                SilentPush => 1,              # OPTIONAL
                RawContent => 'My__string',
                Body       => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
              },    # OPTIONAL
              BaiduMessage => {
                MediaUrl   => 'My__string',
                Title      => 'My__string',
                JsonBody   => 'My__string',
                SilentPush => 1,              # OPTIONAL
                RawContent => 'My__string',
                Body       => 'My__string',
                Action =>
                  'OPEN_APP',    # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
                ImageIconUrl      => 'My__string',
                Url               => 'My__string',
                ImageSmallIconUrl => 'My__string',
                ImageUrl          => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            Schedule => {
              QuietTime => {
                End   => 'My__string',
                Start => 'My__string',
              },    # OPTIONAL
              EndTime   => 'My__string',
              Timezone  => 'My__string',
              StartTime => 'My__string',
              Frequency =>
                'ONCE', # values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY; OPTIONAL
              IsLocalTime => 1,    # OPTIONAL
            },    # OPTIONAL
            SizePercent => 1,    # OPTIONAL
          },
          ...
        ],                       # OPTIONAL
        SegmentId      => 'My__string',
        SegmentVersion => 1,              # OPTIONAL
      },

    );

    # Results:
    my $CampaignResponse = $CreateCampaignResponse->CampaignResponse;

    # Returns a L<Paws::Pinpoint::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> WriteCampaignRequest => L<Paws::Pinpoint::WriteCampaignRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

