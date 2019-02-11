
package Paws::MediaTailor::PutPlaybackConfiguration;
  use Moose;
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has CdnConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::CdnConfiguration');
  has DashConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DashConfigurationForPut');
  has Name => (is => 'ro', isa => 'Str');
  has SlateAdUrl => (is => 'ro', isa => 'Str');
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
      CdnConfiguration    => {
        AdSegmentUrlPrefix      => 'My__string',
        ContentSegmentUrlPrefix => 'My__string',
      },                                      # OPTIONAL
      DashConfiguration     => { MpdLocation => 'My__string', },    # OPTIONAL
      Name                  => 'My__string',                        # OPTIONAL
      SlateAdUrl            => 'My__string',                        # OPTIONAL
      TranscodeProfileName  => 'My__string',                        # OPTIONAL
      VideoContentSourceUrl => 'My__string',                        # OPTIONAL
      );

    # Results:
    my $AdDecisionServerUrl =
      $PutPlaybackConfigurationResponse->AdDecisionServerUrl;
    my $CdnConfiguration = $PutPlaybackConfigurationResponse->CdnConfiguration;
    my $DashConfiguration =
      $PutPlaybackConfigurationResponse->DashConfiguration;
    my $HlsConfiguration = $PutPlaybackConfigurationResponse->HlsConfiguration;
    my $Name             = $PutPlaybackConfigurationResponse->Name;
    my $PlaybackEndpointPrefix =
      $PutPlaybackConfigurationResponse->PlaybackEndpointPrefix;
    my $SessionInitializationEndpointPrefix =
      $PutPlaybackConfigurationResponse->SessionInitializationEndpointPrefix;
    my $SlateAdUrl = $PutPlaybackConfigurationResponse->SlateAdUrl;
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
length is 25000 characters.



=head2 CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>

The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.



=head2 DashConfiguration => L<Paws::MediaTailor::DashConfigurationForPut>

The configuration object for DASH content.



=head2 Name => Str

The identifier for the configuration.



=head2 SlateAdUrl => Str

The URL for a high-quality video asset to transcode and use to fill in
time that's not used by ads. AWS Elemental MediaTailor shows the slate
to fill in gaps in media content. Configuring the slate is optional for
non-VPAID configurations. For VPAID, the slate is required because AWS
Elemental MediaTailor provides it in the slots that are designated for
dynamic ad content. The slate must be a high-quality asset that
contains both audio and video.



=head2 TranscodeProfileName => Str

Associate this playbackConfiguration with a custom transcode profile,
overriding MediaTailor's dynamic transcoding defaults. Do not include
this field if you have not setup custom profiles with the MediaTailor
service team.



=head2 VideoContentSourceUrl => Str

The URL prefix for the master playlist for the stream, minus the asset
ID. The maximum length is 512 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPlaybackConfiguration in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

