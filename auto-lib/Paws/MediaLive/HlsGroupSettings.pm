package Paws::MediaLive::HlsGroupSettings;
  use Moose;
  has AdMarkers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'adMarkers', traits => ['NameInRequest']);
  has BaseUrlContent => (is => 'ro', isa => 'Str', request_name => 'baseUrlContent', traits => ['NameInRequest']);
  has BaseUrlManifest => (is => 'ro', isa => 'Str', request_name => 'baseUrlManifest', traits => ['NameInRequest']);
  has CaptionLanguageMappings => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::CaptionLanguageMapping]', request_name => 'captionLanguageMappings', traits => ['NameInRequest']);
  has CaptionLanguageSetting => (is => 'ro', isa => 'Str', request_name => 'captionLanguageSetting', traits => ['NameInRequest']);
  has ClientCache => (is => 'ro', isa => 'Str', request_name => 'clientCache', traits => ['NameInRequest']);
  has CodecSpecification => (is => 'ro', isa => 'Str', request_name => 'codecSpecification', traits => ['NameInRequest']);
  has ConstantIv => (is => 'ro', isa => 'Str', request_name => 'constantIv', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Paws::MediaLive::OutputLocationRef', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has DirectoryStructure => (is => 'ro', isa => 'Str', request_name => 'directoryStructure', traits => ['NameInRequest']);
  has EncryptionType => (is => 'ro', isa => 'Str', request_name => 'encryptionType', traits => ['NameInRequest']);
  has HlsCdnSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsCdnSettings', request_name => 'hlsCdnSettings', traits => ['NameInRequest']);
  has IFrameOnlyPlaylists => (is => 'ro', isa => 'Str', request_name => 'iFrameOnlyPlaylists', traits => ['NameInRequest']);
  has IndexNSegments => (is => 'ro', isa => 'Int', request_name => 'indexNSegments', traits => ['NameInRequest']);
  has InputLossAction => (is => 'ro', isa => 'Str', request_name => 'inputLossAction', traits => ['NameInRequest']);
  has IvInManifest => (is => 'ro', isa => 'Str', request_name => 'ivInManifest', traits => ['NameInRequest']);
  has IvSource => (is => 'ro', isa => 'Str', request_name => 'ivSource', traits => ['NameInRequest']);
  has KeepSegments => (is => 'ro', isa => 'Int', request_name => 'keepSegments', traits => ['NameInRequest']);
  has KeyFormat => (is => 'ro', isa => 'Str', request_name => 'keyFormat', traits => ['NameInRequest']);
  has KeyFormatVersions => (is => 'ro', isa => 'Str', request_name => 'keyFormatVersions', traits => ['NameInRequest']);
  has KeyProviderSettings => (is => 'ro', isa => 'Paws::MediaLive::KeyProviderSettings', request_name => 'keyProviderSettings', traits => ['NameInRequest']);
  has ManifestCompression => (is => 'ro', isa => 'Str', request_name => 'manifestCompression', traits => ['NameInRequest']);
  has ManifestDurationFormat => (is => 'ro', isa => 'Str', request_name => 'manifestDurationFormat', traits => ['NameInRequest']);
  has MinSegmentLength => (is => 'ro', isa => 'Int', request_name => 'minSegmentLength', traits => ['NameInRequest']);
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);
  has OutputSelection => (is => 'ro', isa => 'Str', request_name => 'outputSelection', traits => ['NameInRequest']);
  has ProgramDateTime => (is => 'ro', isa => 'Str', request_name => 'programDateTime', traits => ['NameInRequest']);
  has ProgramDateTimePeriod => (is => 'ro', isa => 'Int', request_name => 'programDateTimePeriod', traits => ['NameInRequest']);
  has RedundantManifest => (is => 'ro', isa => 'Str', request_name => 'redundantManifest', traits => ['NameInRequest']);
  has SegmentationMode => (is => 'ro', isa => 'Str', request_name => 'segmentationMode', traits => ['NameInRequest']);
  has SegmentLength => (is => 'ro', isa => 'Int', request_name => 'segmentLength', traits => ['NameInRequest']);
  has SegmentsPerSubdirectory => (is => 'ro', isa => 'Int', request_name => 'segmentsPerSubdirectory', traits => ['NameInRequest']);
  has StreamInfResolution => (is => 'ro', isa => 'Str', request_name => 'streamInfResolution', traits => ['NameInRequest']);
  has TimedMetadataId3Frame => (is => 'ro', isa => 'Str', request_name => 'timedMetadataId3Frame', traits => ['NameInRequest']);
  has TimedMetadataId3Period => (is => 'ro', isa => 'Int', request_name => 'timedMetadataId3Period', traits => ['NameInRequest']);
  has TimestampDeltaMilliseconds => (is => 'ro', isa => 'Int', request_name => 'timestampDeltaMilliseconds', traits => ['NameInRequest']);
  has TsFileMode => (is => 'ro', isa => 'Str', request_name => 'tsFileMode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsGroupSettings object:

  $service_obj->Method(Att1 => { AdMarkers => $value, ..., TsFileMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdMarkers

=head1 DESCRIPTION

Placeholder documentation for HlsGroupSettings

=head1 ATTRIBUTES


=head2 AdMarkers => ArrayRef[Str|Undef]

  Choose one or more ad marker types to pass SCTE35 signals through to
this group of Apple HLS outputs.


=head2 BaseUrlContent => Str

  A partial URI prefix that will be prepended to each output in the media
.m3u8 file. Can be used if base manifest is delivered from a different
URL than the main .m3u8 file.


=head2 BaseUrlManifest => Str

  A partial URI prefix that will be prepended to each output in the media
.m3u8 file. Can be used if base manifest is delivered from a different
URL than the main .m3u8 file.


=head2 CaptionLanguageMappings => ArrayRef[L<Paws::MediaLive::CaptionLanguageMapping>]

  Mapping of up to 4 caption channels to caption languages. Is only
meaningful if captionLanguageSetting is set to "insert".


=head2 CaptionLanguageSetting => Str

  Applies only to 608 Embedded output captions. insert: Include
CLOSED-CAPTIONS lines in the manifest. Specify at least one language in
the CC1 Language Code field. One CLOSED-CAPTION line is added for each
Language Code you specify. Make sure to specify the languages in the
order in which they appear in the original source (if the source is
embedded format) or the order of the caption selectors (if the source
is other than embedded). Otherwise, languages in the manifest will not
match up properly with the output captions. none: Include
CLOSED-CAPTIONS=NONE line in the manifest. omit: Omit any
CLOSED-CAPTIONS line from the manifest.


=head2 ClientCache => Str

  When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the
manifest, which prevents clients from saving media segments for later
replay.


=head2 CodecSpecification => Str

  Specification to use (RFC-6381 or the default RFC-4281) during m3u8
playlist generation.


=head2 ConstantIv => Str

  For use with encryptionType. This is a 128-bit, 16-byte hex value
represented by a 32-character text string. If ivSource is set to
"explicit" then this parameter is required and is used as the IV for
encryption.


=head2 B<REQUIRED> Destination => L<Paws::MediaLive::OutputLocationRef>

  A directory or HTTP destination for the HLS segments, manifest files,
and encryption keys (if enabled).


=head2 DirectoryStructure => Str

  Place segments in subdirectories.


=head2 EncryptionType => Str

  Encrypts the segments with the given encryption scheme. Exclude this
parameter if no encryption is desired.


=head2 HlsCdnSettings => L<Paws::MediaLive::HlsCdnSettings>

  Parameters that control interactions with the CDN.


=head2 IFrameOnlyPlaylists => Str

  If enabled, writes out I-Frame only playlists in addition to media
playlists.


=head2 IndexNSegments => Int

  If mode is "live", the number of segments to retain in the manifest
(.m3u8) file. This number must be less than or equal to keepSegments.
If mode is "vod", this parameter has no effect.


=head2 InputLossAction => Str

  Parameter that control output group behavior on input loss.


=head2 IvInManifest => Str

  For use with encryptionType. The IV (Initialization Vector) is a
128-bit number used in conjunction with the key for encrypting blocks.
If set to "include", IV is listed in the manifest, otherwise the IV is
not in the manifest.


=head2 IvSource => Str

  For use with encryptionType. The IV (Initialization Vector) is a
128-bit number used in conjunction with the key for encrypting blocks.
If this setting is "followsSegmentNumber", it will cause the IV to
change every segment (to match the segment number). If this is set to
"explicit", you must enter a constantIv value.


=head2 KeepSegments => Int

  If mode is "live", the number of TS segments to retain in the
destination directory. If mode is "vod", this parameter has no effect.


=head2 KeyFormat => Str

  The value specifies how the key is represented in the resource
identified by the URI. If parameter is absent, an implicit value of
"identity" is used. A reverse DNS string can also be given.


=head2 KeyFormatVersions => Str

  Either a single positive integer version value or a slash delimited
list of version values (1/2/3).


=head2 KeyProviderSettings => L<Paws::MediaLive::KeyProviderSettings>

  The key provider settings.


=head2 ManifestCompression => Str

  When set to gzip, compresses HLS playlist.


=head2 ManifestDurationFormat => Str

  Indicates whether the output manifest should use floating point or
integer values for segment duration.


=head2 MinSegmentLength => Int

  When set, minimumSegmentLength is enforced by looking ahead and back
within the specified range for a nearby avail and extending the segment
size if needed.


=head2 Mode => Str

  If "vod", all segments are indexed and kept permanently in the
destination and manifest. If "live", only the number segments specified
in keepSegments and indexNSegments are kept; newer segments replace
older segments, which may prevent players from rewinding all the way to
the beginning of the event. VOD mode uses HLS EXT-X-PLAYLIST-TYPE of
EVENT while the channel is running, converting it to a "VOD" type
manifest on completion of the stream.


=head2 OutputSelection => Str

  Generates the .m3u8 playlist file for this HLS output group. The
segmentsOnly option will output segments without the .m3u8 file.


=head2 ProgramDateTime => Str

  Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
files. The value is calculated as follows: either the program date and
time are initialized using the input timecode source, or the time is
initialized using the input timecode source and the date is initialized
using the timestampOffset.


=head2 ProgramDateTimePeriod => Int

  Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.


=head2 RedundantManifest => Str

  When set to "enabled", includes the media playlists from both pipelines
in the master manifest (.m3u8) file.


=head2 SegmentationMode => Str

  useInputSegmentation has been deprecated. The configured segment size
is always used.


=head2 SegmentLength => Int

  Length of MPEG-2 Transport Stream segments to create (in seconds). Note
that segments will end on the next keyframe after this number of
seconds, so actual segment length may be longer.


=head2 SegmentsPerSubdirectory => Int

  Number of segments to write to a subdirectory before starting a new
one. directoryStructure must be subdirectoryPerStream for this setting
to have an effect.


=head2 StreamInfResolution => Str

  Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF
tag of variant manifest.


=head2 TimedMetadataId3Frame => Str

  Indicates ID3 frame that has the timecode.


=head2 TimedMetadataId3Period => Int

  Timed Metadata interval in seconds.


=head2 TimestampDeltaMilliseconds => Int

  Provides an extra millisecond delta offset to fine tune the timestamps.


=head2 TsFileMode => Str

  When set to "singleFile", emits the program as a single media resource
(.ts) file, and uses #EXT-X-BYTERANGE tags to index segment for
playback. Playback of VOD mode content during event is not guaranteed
due to HTTP server caching.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

