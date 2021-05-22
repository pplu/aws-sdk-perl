
package Paws::MediaTailor::PutPlaybackConfiguration;
  use Moose;
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has AvailSuppression => (is => 'ro', isa => 'Paws::MediaTailor::AvailSuppression');
  has Bumper => (is => 'ro', isa => 'Paws::MediaTailor::Bumper');
  has CdnConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::CdnConfiguration');
  has ConfigurationAliases => (is => 'ro', isa => 'Paws::MediaTailor::ConfigurationAliasesRequest');
  has DashConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DashConfigurationForPut');
  has LivePreRollConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::LivePreRollConfiguration');
  has ManifestProcessingRules => (is => 'ro', isa => 'Paws::MediaTailor::ManifestProcessingRules');
  has Name => (is => 'ro', isa => 'Str');
  has PersonalizationThresholdSeconds => (is => 'ro', isa => 'Int');
  has SlateAdUrl => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has TranscodeProfileName => (is => 'ro', isa => 'Str');
  has VideoContentSourceUrl => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPlaybackConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/playbackConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::PutPlaybackConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::PutPlaybackConfiguration - Arguments for method PutPlaybackConfiguration on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPlaybackConfiguration on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method PutPlaybackConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPlaybackConfiguration.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $PutPlaybackConfigurationResponse =
      $api . mediatailor->PutPlaybackConfiguration(
      AdDecisionServerUrl => 'My__string',    # OPTIONAL
      AvailSuppression    => {
        Mode  => 'OFF',          # values: OFF, BEHIND_LIVE_EDGE; OPTIONAL
        Value => 'My__string',
      },    # OPTIONAL
      Bumper => {
        EndUrl   => 'My__string',
        StartUrl => 'My__string',
      },    # OPTIONAL
      CdnConfiguration => {
        AdSegmentUrlPrefix      => 'My__string',
        ContentSegmentUrlPrefix => 'My__string',
      },    # OPTIONAL
      ConfigurationAliases =>
        { 'My__string' => { 'My__string' => 'My__string', }, },    # OPTIONAL
      DashConfiguration => {
        MpdLocation => 'My__string',
        OriginManifestType =>
          'SINGLE_PERIOD',    # values: SINGLE_PERIOD, MULTI_PERIOD; OPTIONAL
      },    # OPTIONAL
      LivePreRollConfiguration => {
        AdDecisionServerUrl => 'My__string',
        MaxDurationSeconds  => 1,              # OPTIONAL
      },    # OPTIONAL
      ManifestProcessingRules => {
        AdMarkerPassthrough => {
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Name                            => 'My__string',    # OPTIONAL
      PersonalizationThresholdSeconds => 1,               # OPTIONAL
      SlateAdUrl                      => 'My__string',    # OPTIONAL
      Tags                  => { 'My__string' => 'My__string', },    # OPTIONAL
      TranscodeProfileName  => 'My__string',                         # OPTIONAL
      VideoContentSourceUrl => 'My__string',                         # OPTIONAL
      );

    # Results:
    my $AdDecisionServerUrl =
      $PutPlaybackConfigurationResponse->AdDecisionServerUrl;
    my $AvailSuppression = $PutPlaybackConfigurationResponse->AvailSuppression;
    my $Bumper           = $PutPlaybackConfigurationResponse->Bumper;
    my $CdnConfiguration = $PutPlaybackConfigurationResponse->CdnConfiguration;
    my $ConfigurationAliases =
      $PutPlaybackConfigurationResponse->ConfigurationAliases;
    my $DashConfiguration =
      $PutPlaybackConfigurationResponse->DashConfiguration;
    my $HlsConfiguration = $PutPlaybackConfigurationResponse->HlsConfiguration;
    my $LivePreRollConfiguration =
      $PutPlaybackConfigurationResponse->LivePreRollConfiguration;
    my $ManifestProcessingRules =
      $PutPlaybackConfigurationResponse->ManifestProcessingRules;
    my $Name = $PutPlaybackConfigurationResponse->Name;
    my $PersonalizationThresholdSeconds =
      $PutPlaybackConfigurationResponse->PersonalizationThresholdSeconds;
    my $PlaybackConfigurationArn =
      $PutPlaybackConfigurationResponse->PlaybackConfigurationArn;
    my $PlaybackEndpointPrefix =
      $PutPlaybackConfigurationResponse->PlaybackEndpointPrefix;
    my $SessionInitializationEndpointPrefix =
      $PutPlaybackConfigurationResponse->SessionInitializationEndpointPrefix;
    my $SlateAdUrl = $PutPlaybackConfigurationResponse->SlateAdUrl;
    my $Tags       = $PutPlaybackConfigurationResponse->Tags;
    my $TranscodeProfileName =
      $PutPlaybackConfigurationResponse->TranscodeProfileName;
    my $VideoContentSourceUrl =
      $PutPlaybackConfigurationResponse->VideoContentSourceUrl;

    # Returns a L<Paws::MediaTailor::PutPlaybackConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/PutPlaybackConfiguration>

=head1 ATTRIBUTES


=head2 AdDecisionServerUrl => Str

The URL for the ad decision server (ADS). This includes the
specification of static parameters and placeholders for dynamic
parameters. AWS Elemental MediaTailor substitutes player-specific and
session-specific parameters as needed when calling the ADS.
Alternately, for testing you can provide a static VAST URL. The maximum
length is 25,000 characters.



=head2 AvailSuppression => L<Paws::MediaTailor::AvailSuppression>

The configuration for avail suppression, also known as ad suppression.
For more information about ad suppression, see Ad Suppression
(https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html).



=head2 Bumper => L<Paws::MediaTailor::Bumper>

The configuration for bumpers. Bumpers are short audio or video clips
that play at the start or before the end of an ad break. To learn more
about bumpers, see Bumpers
(https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html).



=head2 CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>

The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.



=head2 ConfigurationAliases => L<Paws::MediaTailor::ConfigurationAliasesRequest>

The player parameters and aliases used as dynamic variables during
session initialization. For more information, see Domain Variables
(https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html).



=head2 DashConfiguration => L<Paws::MediaTailor::DashConfigurationForPut>

The configuration for DASH content.



=head2 LivePreRollConfiguration => L<Paws::MediaTailor::LivePreRollConfiguration>

The configuration for pre-roll ad insertion.



=head2 ManifestProcessingRules => L<Paws::MediaTailor::ManifestProcessingRules>

The configuration for manifest processing rules. Manifest processing
rules enable customization of the personalized manifests created by
MediaTailor.



=head2 Name => Str

The identifier for the playback configuration.



=head2 PersonalizationThresholdSeconds => Int

Defines the maximum duration of underfilled ad time (in seconds)
allowed in an ad break. If the duration of underfilled ad time exceeds
the personalization threshold, then the personalization of the ad break
is abandoned and the underlying content is shown. This feature applies
to I<ad replacement> in live and VOD streams, rather than ad insertion,
because it relies on an underlying content stream. For more information
about ad break behavior, including ad replacement and insertion, see Ad
Behavior in AWS Elemental MediaTailor
(https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html).



=head2 SlateAdUrl => Str

The URL for a high-quality video asset to transcode and use to fill in
time that's not used by ads. AWS Elemental MediaTailor shows the slate
to fill in gaps in media content. Configuring the slate is optional for
non-VPAID configurations. For VPAID, the slate is required because
MediaTailor provides it in the slots that are designated for dynamic ad
content. The slate must be a high-quality asset that contains both
audio and video.



=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the playback configuration.



=head2 TranscodeProfileName => Str

The name that is used to associate this playback configuration with a
custom transcode profile. This overrides the dynamic transcoding
defaults of MediaTailor. Use this only if you have already set up
custom profiles with the help of AWS Support.



=head2 VideoContentSourceUrl => Str

The URL prefix for the parent manifest for the stream, minus the asset
ID. The maximum length is 512 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPlaybackConfiguration in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

