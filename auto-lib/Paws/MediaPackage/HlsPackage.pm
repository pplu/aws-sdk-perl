package Paws::MediaPackage::HlsPackage;
  use Moose;
  has AdMarkers => (is => 'ro', isa => 'Str', request_name => 'adMarkers', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackage::HlsEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has IncludeIframeOnlyStream => (is => 'ro', isa => 'Bool', request_name => 'includeIframeOnlyStream', traits => ['NameInRequest']);
  has PlaylistType => (is => 'ro', isa => 'Str', request_name => 'playlistType', traits => ['NameInRequest']);
  has PlaylistWindowSeconds => (is => 'ro', isa => 'Int', request_name => 'playlistWindowSeconds', traits => ['NameInRequest']);
  has ProgramDateTimeIntervalSeconds => (is => 'ro', isa => 'Int', request_name => 'programDateTimeIntervalSeconds', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has StreamSelection => (is => 'ro', isa => 'Paws::MediaPackage::StreamSelection', request_name => 'streamSelection', traits => ['NameInRequest']);
  has UseAudioRenditionGroup => (is => 'ro', isa => 'Bool', request_name => 'useAudioRenditionGroup', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::HlsPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HlsPackage object:

  $service_obj->Method(Att1 => { AdMarkers => $value, ..., UseAudioRenditionGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HlsPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->AdMarkers

=head1 DESCRIPTION

An HTTP Live Streaming (HLS) packaging configuration.

=head1 ATTRIBUTES


=head2 AdMarkers => Str

  This setting controls how ad markers are included in the packaged
OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the
output. "PASSTHROUGH" causes the manifest to contain a copy of the
SCTE-35 ad markers (comments) taken directly from the input HTTP Live
Streaming (HLS) manifest. "SCTE35_ENHANCED" generates ad markers and
blackout tags based on SCTE-35 messages in the input source.


=head2 Encryption => L<Paws::MediaPackage::HlsEncryption>

  


=head2 IncludeIframeOnlyStream => Bool

  When enabled, an I-Frame only stream will be included in the output.


=head2 PlaylistType => Str

  The HTTP Live Streaming (HLS) playlist type. When either "EVENT" or
"VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be
included in the media playlist.


=head2 PlaylistWindowSeconds => Int

  Time window (in seconds) contained in each parent manifest.


=head2 ProgramDateTimeIntervalSeconds => Int

  The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
inserted into manifests. Additionally, when an interval is specified
ID3Timed Metadata messages will be generated every 5 seconds using the
ingest time of the content. If the interval is not specified, or set to
0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests
and no ID3Timed Metadata messages will be generated. Note that
irrespective of this parameter, if any ID3 Timed Metadata is found in
HTTP Live Streaming (HLS) input, it will be passed through to HLS
output.


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each fragment. Actual fragments will be
rounded to the nearest multiple of the source fragment duration.


=head2 StreamSelection => L<Paws::MediaPackage::StreamSelection>

  


=head2 UseAudioRenditionGroup => Bool

  When enabled, audio streams will be placed in rendition groups in the
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

