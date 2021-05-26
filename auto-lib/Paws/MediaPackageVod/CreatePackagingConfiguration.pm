
package Paws::MediaPackageVod::CreatePackagingConfiguration;
  use Moose;
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::CmafPackage', traits => ['NameInRequest'], request_name => 'cmafPackage');
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::DashPackage', traits => ['NameInRequest'], request_name => 'dashPackage');
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::HlsPackage', traits => ['NameInRequest'], request_name => 'hlsPackage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::MssPackage', traits => ['NameInRequest'], request_name => 'mssPackage');
  has PackagingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packagingGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePackagingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::CreatePackagingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::CreatePackagingConfiguration - Arguments for method CreatePackagingConfiguration on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePackagingConfiguration on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method CreatePackagingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePackagingConfiguration.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $CreatePackagingConfigurationResponse =
      $mediapackage -vod->CreatePackagingConfiguration(
      Id               => 'My__string',
      PackagingGroupId => 'My__string',
      CmafPackage      => {
        HlsManifests => [
          {
            AdMarkers =>
              'NONE',    # values: NONE, SCTE35_ENHANCED, PASSTHROUGH; OPTIONAL
            IncludeIframeOnlyStream        => 1,              # OPTIONAL
            ManifestName                   => 'My__string',
            ProgramDateTimeIntervalSeconds => 1,              # OPTIONAL
            RepeatExtXKey                  => 1,              # OPTIONAL
            StreamSelection                => {
              MaxVideoBitsPerSecond => 1,                     # OPTIONAL
              MinVideoBitsPerSecond => 1,                     # OPTIONAL
              StreamOrder           => 'ORIGINAL'
              , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        Encryption => {
          SpekeKeyProvider => {
            RoleArn   => 'My__string',
            SystemIds => [ 'My__string', ... ],
            Url       => 'My__string',

          },

        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      DashPackage => {
        DashManifests => [
          {
            ManifestLayout => 'FULL',         # values: FULL, COMPACT; OPTIONAL
            ManifestName   => 'My__string',
            MinBufferTimeSeconds => 1,       # OPTIONAL
            Profile              => 'NONE',  # values: NONE, HBBTV_1_5; OPTIONAL
            StreamSelection      => {
              MaxVideoBitsPerSecond => 1,           # OPTIONAL
              MinVideoBitsPerSecond => 1,           # OPTIONAL
              StreamOrder           => 'ORIGINAL'
              , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        Encryption => {
          SpekeKeyProvider => {
            RoleArn   => 'My__string',
            SystemIds => [ 'My__string', ... ],
            Url       => 'My__string',

          },

        },    # OPTIONAL
        PeriodTriggers => [
          'ADS', ...    # values: ADS
        ],              # OPTIONAL
        SegmentDurationSeconds => 1,                       # OPTIONAL
        SegmentTemplateFormat  => 'NUMBER_WITH_TIMELINE'
        , # values: NUMBER_WITH_TIMELINE, TIME_WITH_TIMELINE, NUMBER_WITH_DURATION; OPTIONAL
      },    # OPTIONAL
      HlsPackage => {
        HlsManifests => [
          {
            AdMarkers =>
              'NONE',    # values: NONE, SCTE35_ENHANCED, PASSTHROUGH; OPTIONAL
            IncludeIframeOnlyStream        => 1,              # OPTIONAL
            ManifestName                   => 'My__string',
            ProgramDateTimeIntervalSeconds => 1,              # OPTIONAL
            RepeatExtXKey                  => 1,              # OPTIONAL
            StreamSelection                => {
              MaxVideoBitsPerSecond => 1,                     # OPTIONAL
              MinVideoBitsPerSecond => 1,                     # OPTIONAL
              StreamOrder           => 'ORIGINAL'
              , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        Encryption => {
          SpekeKeyProvider => {
            RoleArn   => 'My__string',
            SystemIds => [ 'My__string', ... ],
            Url       => 'My__string',

          },
          ConstantInitializationVector => 'My__string',
          EncryptionMethod => 'AES_128', # values: AES_128, SAMPLE_AES; OPTIONAL
        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
        UseAudioRenditionGroup => 1,    # OPTIONAL
      },    # OPTIONAL
      MssPackage => {
        MssManifests => [
          {
            ManifestName    => 'My__string',
            StreamSelection => {
              MaxVideoBitsPerSecond => 1,           # OPTIONAL
              MinVideoBitsPerSecond => 1,           # OPTIONAL
              StreamOrder           => 'ORIGINAL'
              , # values: ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        Encryption => {
          SpekeKeyProvider => {
            RoleArn   => 'My__string',
            SystemIds => [ 'My__string', ... ],
            Url       => 'My__string',

          },

        },    # OPTIONAL
        SegmentDurationSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Arn         = $CreatePackagingConfigurationResponse->Arn;
    my $CmafPackage = $CreatePackagingConfigurationResponse->CmafPackage;
    my $DashPackage = $CreatePackagingConfigurationResponse->DashPackage;
    my $HlsPackage  = $CreatePackagingConfigurationResponse->HlsPackage;
    my $Id          = $CreatePackagingConfigurationResponse->Id;
    my $MssPackage  = $CreatePackagingConfigurationResponse->MssPackage;
    my $PackagingGroupId =
      $CreatePackagingConfigurationResponse->PackagingGroupId;

# Returns a L<Paws::MediaPackageVod::CreatePackagingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/CreatePackagingConfiguration>

=head1 ATTRIBUTES


=head2 CmafPackage => L<Paws::MediaPackageVod::CmafPackage>





=head2 DashPackage => L<Paws::MediaPackageVod::DashPackage>





=head2 HlsPackage => L<Paws::MediaPackageVod::HlsPackage>





=head2 B<REQUIRED> Id => Str

The ID of the PackagingConfiguration.



=head2 MssPackage => L<Paws::MediaPackageVod::MssPackage>





=head2 B<REQUIRED> PackagingGroupId => Str

The ID of a PackagingGroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePackagingConfiguration in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

