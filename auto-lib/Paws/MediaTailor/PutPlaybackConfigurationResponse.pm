
package Paws::MediaTailor::PutPlaybackConfigurationResponse;
  use Moose;
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has CdnConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::CdnConfiguration');
  has DashConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DashConfiguration');
  has HlsConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HlsConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has PlaybackEndpointPrefix => (is => 'ro', isa => 'Str');
  has SessionInitializationEndpointPrefix => (is => 'ro', isa => 'Str');
  has SlateAdUrl => (is => 'ro', isa => 'Str');
  has TranscodeProfileName => (is => 'ro', isa => 'Str');
  has VideoContentSourceUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::PutPlaybackConfigurationResponse

=head1 ATTRIBUTES


=head2 AdDecisionServerUrl => Str

The URL for the ad decision server (ADS). This includes the
specification of static parameters and placeholders for dynamic
parameters. AWS Elemental MediaTailor substitutes player-specific and
session-specific parameters as needed when calling the ADS.
Alternately, for testing, you can provide a static VAST URL. The
maximum length is 25000 characters.


=head2 CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>

The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.


=head2 DashConfiguration => L<Paws::MediaTailor::DashConfiguration>

The configuration object for DASH content.


=head2 HlsConfiguration => L<Paws::MediaTailor::HlsConfiguration>

The configuration for HLS content.


=head2 Name => Str

The identifier for the configuration.


=head2 PlaybackEndpointPrefix => Str

The URL that the player accesses to get a manifest from AWS Elemental
MediaTailor. This session will use server-side reporting.


=head2 SessionInitializationEndpointPrefix => Str

The URL that the player uses to initialize a session that uses
client-side reporting.


=head2 SlateAdUrl => Str

URL for a high-quality video asset to transcode and use to fill in time
that's not used by ads. AWS Elemental MediaTailor shows the slate to
fill in gaps in media content. Configuring the slate is optional for
non-VPAID configurations. For VPAID, the slate is required because AWS
Elemental MediaTailor provides it in the slots designated for dynamic
ad content. The slate must be a high-quality asset that contains both
audio and video.


=head2 TranscodeProfileName => Str

Associate this playbackConfiguration with a custom transcode profile,
overriding MediaTailor's dynamic transcoding defaults. Do not include
this field if you have not setup custom profiles with the MediaTailor
service team.


=head2 VideoContentSourceUrl => Str

The URL prefix for the master playlist for the stream, minus the asset
ID. The maximum length is 512 characters.


=head2 _request_id => Str


=cut

