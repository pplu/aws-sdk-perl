
package Paws::MediaPackage::CreateOriginEndpoint;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelId', required => 1);
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackage::CmafPackageCreateOrUpdateParameters', traits => ['NameInRequest'], request_name => 'cmafPackage');
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackage::DashPackage', traits => ['NameInRequest'], request_name => 'dashPackage');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackage::HlsPackage', traits => ['NameInRequest'], request_name => 'hlsPackage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ManifestName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manifestName');
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackage::MssPackage', traits => ['NameInRequest'], request_name => 'mssPackage');
  has StartoverWindowSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startoverWindowSeconds');
  has TimeDelaySeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeDelaySeconds');
  has Whitelist => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'whitelist');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOriginEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/origin_endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::CreateOriginEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CreateOriginEndpoint - Arguments for method CreateOriginEndpoint on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOriginEndpoint on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method CreateOriginEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOriginEndpoint.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $CreateOriginEndpointResponse = $mediapackage->CreateOriginEndpoint(
      ChannelId   => 'My__string',
      Id          => 'My__string',
      CmafPackage => {
        SegmentPrefix => 'My__string',
        Encryption    => {
          SpekeKeyProvider => {
            ResourceId => 'My__string',
            RoleArn    => 'My__string',
            SystemIds  => [ 'My__string', ... ],
            Url        => 'My__string',

          },
          KeyRotationIntervalSeconds => 1,    # OPTIONAL
        },    # OPTIONAL
        HlsManifests => [
          {
            Id                    => 'My__string',
            PlaylistWindowSeconds => 1,              # OPTIONAL
            AdMarkers =>
              'NONE',    # values: NONE, SCTE35_ENHANCED, PASSTHROUGH; OPTIONAL
            ProgramDateTimeIntervalSeconds => 1,    # OPTIONAL
            IncludeIframeOnlyStream        => 1,    # OPTIONAL
            PlaylistType => 'NONE',         # values: NONE, EVENT, VOD; OPTIONAL
            ManifestName => 'My__string',
          },
          ...
        ],                                  # OPTIONAL
        StreamSelection => {
          MaxVideoBitsPerSecond => 1,           # OPTIONAL
          MinVideoBitsPerSecond => 1,           # OPTIONAL
          StreamOrder           => 'ORIGINAL'
          , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      DashPackage => {
        Profile => 'NONE',    # values: NONE, HBBTV_1_5; OPTIONAL
        SuggestedPresentationDelaySeconds => 1,    # OPTIONAL
        MinBufferTimeSeconds              => 1,    # OPTIONAL
        ManifestWindowSeconds             => 1,    # OPTIONAL
        MinUpdatePeriodSeconds            => 1,    # OPTIONAL
        StreamSelection                   => {
          MaxVideoBitsPerSecond => 1,              # OPTIONAL
          MinVideoBitsPerSecond => 1,              # OPTIONAL
          StreamOrder           => 'ORIGINAL'
          , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
        Encryption             => {
          SpekeKeyProvider => {
            ResourceId => 'My__string',
            RoleArn    => 'My__string',
            SystemIds  => [ 'My__string', ... ],
            Url        => 'My__string',

          },
          KeyRotationIntervalSeconds => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'My__string',    # OPTIONAL
      HlsPackage  => {
        PlaylistWindowSeconds => 1,    # OPTIONAL
        AdMarkers =>
          'NONE',    # values: NONE, SCTE35_ENHANCED, PASSTHROUGH; OPTIONAL
        ProgramDateTimeIntervalSeconds => 1,    # OPTIONAL
        IncludeIframeOnlyStream        => 1,    # OPTIONAL
        UseAudioRenditionGroup         => 1,    # OPTIONAL
        SegmentDurationSeconds         => 1,    # OPTIONAL
        StreamSelection                => {
          MaxVideoBitsPerSecond => 1,           # OPTIONAL
          MinVideoBitsPerSecond => 1,           # OPTIONAL
          StreamOrder           => 'ORIGINAL'
          , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
        },    # OPTIONAL
        PlaylistType => 'NONE',    # values: NONE, EVENT, VOD; OPTIONAL
        Encryption   => {
          SpekeKeyProvider => {
            ResourceId => 'My__string',
            RoleArn    => 'My__string',
            SystemIds  => [ 'My__string', ... ],
            Url        => 'My__string',

          },
          EncryptionMethod => 'AES_128', # values: AES_128, SAMPLE_AES; OPTIONAL
          RepeatExtXKey    => 1,         # OPTIONAL
          KeyRotationIntervalSeconds   => 1,              # OPTIONAL
          ConstantInitializationVector => 'My__string',
        },    # OPTIONAL
      },    # OPTIONAL
      ManifestName => 'My__string',    # OPTIONAL
      MssPackage   => {
        ManifestWindowSeconds => 1,    # OPTIONAL
        Encryption            => {
          SpekeKeyProvider => {
            ResourceId => 'My__string',
            RoleArn    => 'My__string',
            SystemIds  => [ 'My__string', ... ],
            Url        => 'My__string',

          },

        },                             # OPTIONAL
        StreamSelection => {
          MaxVideoBitsPerSecond => 1,           # OPTIONAL
          MinVideoBitsPerSecond => 1,           # OPTIONAL
          StreamOrder           => 'ORIGINAL'
          , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      StartoverWindowSeconds => 1,                        # OPTIONAL
      TimeDelaySeconds       => 1,                        # OPTIONAL
      Whitelist              => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $CmafPackage      = $CreateOriginEndpointResponse->CmafPackage;
    my $ChannelId        = $CreateOriginEndpointResponse->ChannelId;
    my $Description      = $CreateOriginEndpointResponse->Description;
    my $MssPackage       = $CreateOriginEndpointResponse->MssPackage;
    my $Whitelist        = $CreateOriginEndpointResponse->Whitelist;
    my $DashPackage      = $CreateOriginEndpointResponse->DashPackage;
    my $HlsPackage       = $CreateOriginEndpointResponse->HlsPackage;
    my $Id               = $CreateOriginEndpointResponse->Id;
    my $Url              = $CreateOriginEndpointResponse->Url;
    my $TimeDelaySeconds = $CreateOriginEndpointResponse->TimeDelaySeconds;
    my $StartoverWindowSeconds =
      $CreateOriginEndpointResponse->StartoverWindowSeconds;
    my $ManifestName = $CreateOriginEndpointResponse->ManifestName;
    my $Arn          = $CreateOriginEndpointResponse->Arn;

    # Returns a L<Paws::MediaPackage::CreateOriginEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/CreateOriginEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

The ID of the Channel that the OriginEndpoint will be associated with.
This cannot be changed after the OriginEndpoint is created.



=head2 CmafPackage => L<Paws::MediaPackage::CmafPackageCreateOrUpdateParameters>





=head2 DashPackage => L<Paws::MediaPackage::DashPackage>





=head2 Description => Str

A short text description of the OriginEndpoint.



=head2 HlsPackage => L<Paws::MediaPackage::HlsPackage>





=head2 B<REQUIRED> Id => Str

The ID of the OriginEndpoint. The ID must be unique within the region
and it cannot be changed after the OriginEndpoint is created.



=head2 ManifestName => Str

A short string that will be used as the filename of the OriginEndpoint
URL (defaults to "index").



=head2 MssPackage => L<Paws::MediaPackage::MssPackage>





=head2 StartoverWindowSeconds => Int

Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the
OriginEndpoint.



=head2 TimeDelaySeconds => Int

Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the
OriginEndpoint.



=head2 Whitelist => ArrayRef[Str|Undef]

A list of source IP CIDR blocks that will be allowed to access the
OriginEndpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOriginEndpoint in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

