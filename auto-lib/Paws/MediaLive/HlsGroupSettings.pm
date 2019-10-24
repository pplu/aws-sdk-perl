# Generated from default/object.tt
package Paws::MediaLive::HlsGroupSettings;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_KeyProviderSettings MediaLive_OutputLocationRef MediaLive_CaptionLanguageMapping MediaLive_HlsCdnSettings/;
  has AdMarkers => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BaseUrlContent => (is => 'ro', isa => Str);
  has BaseUrlManifest => (is => 'ro', isa => Str);
  has CaptionLanguageMappings => (is => 'ro', isa => ArrayRef[MediaLive_CaptionLanguageMapping]);
  has CaptionLanguageSetting => (is => 'ro', isa => Str);
  has ClientCache => (is => 'ro', isa => Str);
  has CodecSpecification => (is => 'ro', isa => Str);
  has ConstantIv => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => MediaLive_OutputLocationRef, required => 1);
  has DirectoryStructure => (is => 'ro', isa => Str);
  has EncryptionType => (is => 'ro', isa => Str);
  has HlsCdnSettings => (is => 'ro', isa => MediaLive_HlsCdnSettings);
  has IFrameOnlyPlaylists => (is => 'ro', isa => Str);
  has IndexNSegments => (is => 'ro', isa => Int);
  has InputLossAction => (is => 'ro', isa => Str);
  has IvInManifest => (is => 'ro', isa => Str);
  has IvSource => (is => 'ro', isa => Str);
  has KeepSegments => (is => 'ro', isa => Int);
  has KeyFormat => (is => 'ro', isa => Str);
  has KeyFormatVersions => (is => 'ro', isa => Str);
  has KeyProviderSettings => (is => 'ro', isa => MediaLive_KeyProviderSettings);
  has ManifestCompression => (is => 'ro', isa => Str);
  has ManifestDurationFormat => (is => 'ro', isa => Str);
  has MinSegmentLength => (is => 'ro', isa => Int);
  has Mode => (is => 'ro', isa => Str);
  has OutputSelection => (is => 'ro', isa => Str);
  has ProgramDateTime => (is => 'ro', isa => Str);
  has ProgramDateTimePeriod => (is => 'ro', isa => Int);
  has RedundantManifest => (is => 'ro', isa => Str);
  has SegmentationMode => (is => 'ro', isa => Str);
  has SegmentLength => (is => 'ro', isa => Int);
  has SegmentsPerSubdirectory => (is => 'ro', isa => Int);
  has StreamInfResolution => (is => 'ro', isa => Str);
  has TimedMetadataId3Frame => (is => 'ro', isa => Str);
  has TimedMetadataId3Period => (is => 'ro', isa => Int);
  has TimestampDeltaMilliseconds => (is => 'ro', isa => Int);
  has TsFileMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IvInManifest' => {
                                   'type' => 'Str'
                                 },
               'EncryptionType' => {
                                     'type' => 'Str'
                                   },
               'TimestampDeltaMilliseconds' => {
                                                 'type' => 'Int'
                                               },
               'BaseUrlManifest' => {
                                      'type' => 'Str'
                                    },
               'RedundantManifest' => {
                                        'type' => 'Str'
                                      },
               'CaptionLanguageMappings' => {
                                              'class' => 'Paws::MediaLive::CaptionLanguageMapping',
                                              'type' => 'ArrayRef[MediaLive_CaptionLanguageMapping]'
                                            },
               'TsFileMode' => {
                                 'type' => 'Str'
                               },
               'KeepSegments' => {
                                   'type' => 'Int'
                                 },
               'KeyFormat' => {
                                'type' => 'Str'
                              },
               'BaseUrlContent' => {
                                     'type' => 'Str'
                                   },
               'SegmentsPerSubdirectory' => {
                                              'type' => 'Int'
                                            },
               'ProgramDateTimePeriod' => {
                                            'type' => 'Int'
                                          },
               'CodecSpecification' => {
                                         'type' => 'Str'
                                       },
               'SegmentLength' => {
                                    'type' => 'Int'
                                  },
               'ManifestCompression' => {
                                          'type' => 'Str'
                                        },
               'IvSource' => {
                               'type' => 'Str'
                             },
               'ManifestDurationFormat' => {
                                             'type' => 'Str'
                                           },
               'KeyFormatVersions' => {
                                        'type' => 'Str'
                                      },
               'DirectoryStructure' => {
                                         'type' => 'Str'
                                       },
               'MinSegmentLength' => {
                                       'type' => 'Int'
                                     },
               'KeyProviderSettings' => {
                                          'class' => 'Paws::MediaLive::KeyProviderSettings',
                                          'type' => 'MediaLive_KeyProviderSettings'
                                        },
               'HlsCdnSettings' => {
                                     'class' => 'Paws::MediaLive::HlsCdnSettings',
                                     'type' => 'MediaLive_HlsCdnSettings'
                                   },
               'IndexNSegments' => {
                                     'type' => 'Int'
                                   },
               'TimedMetadataId3Frame' => {
                                            'type' => 'Str'
                                          },
               'InputLossAction' => {
                                      'type' => 'Str'
                                    },
               'ProgramDateTime' => {
                                      'type' => 'Str'
                                    },
               'AdMarkers' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'OutputSelection' => {
                                      'type' => 'Str'
                                    },
               'Mode' => {
                           'type' => 'Str'
                         },
               'CaptionLanguageSetting' => {
                                             'type' => 'Str'
                                           },
               'SegmentationMode' => {
                                       'type' => 'Str'
                                     },
               'ClientCache' => {
                                  'type' => 'Str'
                                },
               'Destination' => {
                                  'class' => 'Paws::MediaLive::OutputLocationRef',
                                  'type' => 'MediaLive_OutputLocationRef'
                                },
               'IFrameOnlyPlaylists' => {
                                          'type' => 'Str'
                                        },
               'TimedMetadataId3Period' => {
                                             'type' => 'Int'
                                           },
               'StreamInfResolution' => {
                                          'type' => 'Str'
                                        },
               'ConstantIv' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'IvInManifest' => 'ivInManifest',
                       'EncryptionType' => 'encryptionType',
                       'TimestampDeltaMilliseconds' => 'timestampDeltaMilliseconds',
                       'BaseUrlManifest' => 'baseUrlManifest',
                       'RedundantManifest' => 'redundantManifest',
                       'CaptionLanguageMappings' => 'captionLanguageMappings',
                       'TsFileMode' => 'tsFileMode',
                       'KeepSegments' => 'keepSegments',
                       'KeyFormat' => 'keyFormat',
                       'BaseUrlContent' => 'baseUrlContent',
                       'SegmentsPerSubdirectory' => 'segmentsPerSubdirectory',
                       'ProgramDateTimePeriod' => 'programDateTimePeriod',
                       'CodecSpecification' => 'codecSpecification',
                       'SegmentLength' => 'segmentLength',
                       'ManifestCompression' => 'manifestCompression',
                       'IvSource' => 'ivSource',
                       'ManifestDurationFormat' => 'manifestDurationFormat',
                       'KeyFormatVersions' => 'keyFormatVersions',
                       'DirectoryStructure' => 'directoryStructure',
                       'MinSegmentLength' => 'minSegmentLength',
                       'KeyProviderSettings' => 'keyProviderSettings',
                       'HlsCdnSettings' => 'hlsCdnSettings',
                       'IndexNSegments' => 'indexNSegments',
                       'TimedMetadataId3Frame' => 'timedMetadataId3Frame',
                       'InputLossAction' => 'inputLossAction',
                       'ProgramDateTime' => 'programDateTime',
                       'AdMarkers' => 'adMarkers',
                       'OutputSelection' => 'outputSelection',
                       'Mode' => 'mode',
                       'CaptionLanguageSetting' => 'captionLanguageSetting',
                       'SegmentationMode' => 'segmentationMode',
                       'ClientCache' => 'clientCache',
                       'Destination' => 'destination',
                       'IFrameOnlyPlaylists' => 'iFrameOnlyPlaylists',
                       'TimedMetadataId3Period' => 'timedMetadataId3Period',
                       'StreamInfResolution' => 'streamInfResolution',
                       'ConstantIv' => 'constantIv'
                     },
  'IsRequired' => {
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }


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

Hls Group Settings

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


=head2 CaptionLanguageMappings => ArrayRef[MediaLive_CaptionLanguageMapping]

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


=head2 B<REQUIRED> Destination => MediaLive_OutputLocationRef

  A directory or HTTP destination for the HLS segments, manifest files,
and encryption keys (if enabled).


=head2 DirectoryStructure => Str

  Place segments in subdirectories.


=head2 EncryptionType => Str

  Encrypts the segments with the given encryption scheme. Exclude this
parameter if no encryption is desired.


=head2 HlsCdnSettings => MediaLive_HlsCdnSettings

  Parameters that control interactions with the CDN.


=head2 IFrameOnlyPlaylists => Str

  DISABLED: Do not create an I-frame-only manifest, but do create the
master and media manifests (according to the Output Selection field).
STANDARD: Create an I-frame-only manifest for each output that contains
video, as well as the other manifests (according to the Output
Selection field). The I-frame manifest contains a #EXT-X-I-FRAMES-ONLY
tag to indicate it is I-frame only, and one or more #EXT-X-BYTERANGE
entries identifying the I-frame position. For example,


=head2 IndexNSegments => Int

  Applies only if Mode field is LIVE. Specifies the maximum number of
segments in the media manifest file. After this maximum, older segments
are removed from the media manifest. This number must be less than or
equal to the Keep Segments field.


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

  Applies only if Mode field is LIVE. Specifies the number of media
segments (.ts files) to retain in the destination directory.


=head2 KeyFormat => Str

  The value specifies how the key is represented in the resource
identified by the URI. If parameter is absent, an implicit value of
"identity" is used. A reverse DNS string can also be given.


=head2 KeyFormatVersions => Str

  Either a single positive integer version value or a slash delimited
list of version values (1/2/3).


=head2 KeyProviderSettings => MediaLive_KeyProviderSettings

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

  MANIFESTSANDSEGMENTS: Generates manifests (master manifest, if
applicable, and media manifests) for this output group. SEGMENTSONLY:
Does not generate any manifests for this output group.


=head2 ProgramDateTime => Str

  Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
files. The value is calculated as follows: either the program date and
time are initialized using the input timecode source, or the time is
initialized using the input timecode source and the date is initialized
using the timestampOffset.


=head2 ProgramDateTimePeriod => Int

  Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.


=head2 RedundantManifest => Str

  ENABLED: The master manifest (.m3u8 file) for each pipeline includes
information about both pipelines: first its own media files, then the
media files of the other pipeline. This feature allows playout device
that support stale manifest detection to switch from one manifest to
the other, when the current manifest seems to be stale. There are still
two destinations and two master manifests, but both master manifests
reference the media files from both pipelines. DISABLED: The master
manifest (.m3u8 file) for each pipeline includes information about its
own pipeline only. For an HLS output group with MediaPackage as the
destination, the DISABLED behavior is always followed. MediaPackage
regenerates the manifests it serves to players so a redundant manifest
from MediaLive is irrelevant.


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

  SEGMENTEDFILES: Emit the program as segments - multiple .ts media
files. SINGLEFILE: Applies only if Mode field is VOD. Emit the program
as a single .ts media file. The media manifest includes

this value is when sending the output to AWS Elemental MediaConvert,
which can accept only a single media file. Playback while the channel
is running is not guaranteed due to HTTP server caching.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

