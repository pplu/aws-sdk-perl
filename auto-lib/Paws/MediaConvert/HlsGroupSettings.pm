# Generated from default/object.tt
package Paws::MediaConvert::HlsGroupSettings;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Num Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_DestinationSettings MediaConvert_HlsCaptionLanguageMapping MediaConvert_HlsEncryptionSettings/;
  has AdMarkers => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BaseUrl => (is => 'ro', isa => Str);
  has CaptionLanguageMappings => (is => 'ro', isa => ArrayRef[MediaConvert_HlsCaptionLanguageMapping]);
  has CaptionLanguageSetting => (is => 'ro', isa => Str);
  has ClientCache => (is => 'ro', isa => Str);
  has CodecSpecification => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => Str);
  has DestinationSettings => (is => 'ro', isa => MediaConvert_DestinationSettings);
  has DirectoryStructure => (is => 'ro', isa => Str);
  has Encryption => (is => 'ro', isa => MediaConvert_HlsEncryptionSettings);
  has ManifestCompression => (is => 'ro', isa => Str);
  has ManifestDurationFormat => (is => 'ro', isa => Str);
  has MinFinalSegmentLength => (is => 'ro', isa => Num);
  has MinSegmentLength => (is => 'ro', isa => Int);
  has OutputSelection => (is => 'ro', isa => Str);
  has ProgramDateTime => (is => 'ro', isa => Str);
  has ProgramDateTimePeriod => (is => 'ro', isa => Int);
  has SegmentControl => (is => 'ro', isa => Str);
  has SegmentLength => (is => 'ro', isa => Int);
  has SegmentsPerSubdirectory => (is => 'ro', isa => Int);
  has StreamInfResolution => (is => 'ro', isa => Str);
  has TimedMetadataId3Frame => (is => 'ro', isa => Str);
  has TimedMetadataId3Period => (is => 'ro', isa => Int);
  has TimestampDeltaMilliseconds => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimestampDeltaMilliseconds' => {
                                                 'type' => 'Int'
                                               },
               'DestinationSettings' => {
                                          'class' => 'Paws::MediaConvert::DestinationSettings',
                                          'type' => 'MediaConvert_DestinationSettings'
                                        },
               'TimedMetadataId3Frame' => {
                                            'type' => 'Str'
                                          },
               'CaptionLanguageMappings' => {
                                              'class' => 'Paws::MediaConvert::HlsCaptionLanguageMapping',
                                              'type' => 'ArrayRef[MediaConvert_HlsCaptionLanguageMapping]'
                                            },
               'ProgramDateTime' => {
                                      'type' => 'Str'
                                    },
               'OutputSelection' => {
                                      'type' => 'Str'
                                    },
               'MinFinalSegmentLength' => {
                                            'type' => 'Num'
                                          },
               'Encryption' => {
                                 'class' => 'Paws::MediaConvert::HlsEncryptionSettings',
                                 'type' => 'MediaConvert_HlsEncryptionSettings'
                               },
               'AdMarkers' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'BaseUrl' => {
                              'type' => 'Str'
                            },
               'CaptionLanguageSetting' => {
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
               'ClientCache' => {
                                  'type' => 'Str'
                                },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'ManifestCompression' => {
                                          'type' => 'Str'
                                        },
               'SegmentControl' => {
                                     'type' => 'Str'
                                   },
               'ManifestDurationFormat' => {
                                             'type' => 'Str'
                                           },
               'TimedMetadataId3Period' => {
                                             'type' => 'Int'
                                           },
               'StreamInfResolution' => {
                                          'type' => 'Str'
                                        },
               'DirectoryStructure' => {
                                         'type' => 'Str'
                                       },
               'MinSegmentLength' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'TimestampDeltaMilliseconds' => 'timestampDeltaMilliseconds',
                       'DestinationSettings' => 'destinationSettings',
                       'TimedMetadataId3Frame' => 'timedMetadataId3Frame',
                       'CaptionLanguageMappings' => 'captionLanguageMappings',
                       'ProgramDateTime' => 'programDateTime',
                       'OutputSelection' => 'outputSelection',
                       'MinFinalSegmentLength' => 'minFinalSegmentLength',
                       'Encryption' => 'encryption',
                       'AdMarkers' => 'adMarkers',
                       'BaseUrl' => 'baseUrl',
                       'CaptionLanguageSetting' => 'captionLanguageSetting',
                       'SegmentsPerSubdirectory' => 'segmentsPerSubdirectory',
                       'ProgramDateTimePeriod' => 'programDateTimePeriod',
                       'CodecSpecification' => 'codecSpecification',
                       'SegmentLength' => 'segmentLength',
                       'ClientCache' => 'clientCache',
                       'Destination' => 'destination',
                       'ManifestCompression' => 'manifestCompression',
                       'SegmentControl' => 'segmentControl',
                       'ManifestDurationFormat' => 'manifestDurationFormat',
                       'TimedMetadataId3Period' => 'timedMetadataId3Period',
                       'StreamInfResolution' => 'streamInfResolution',
                       'DirectoryStructure' => 'directoryStructure',
                       'MinSegmentLength' => 'minSegmentLength'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsGroupSettings object:

  $service_obj->Method(Att1 => { AdMarkers => $value, ..., TimestampDeltaMilliseconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdMarkers

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to HLS_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 AdMarkers => ArrayRef[Str|Undef]

  Choose one or more ad marker types to decorate your Apple HLS manifest.
This setting does not determine whether SCTE-35 markers appear in the
outputs themselves.


=head2 BaseUrl => Str

  A partial URI prefix that will be prepended to each output in the media
.m3u8 file. Can be used if base manifest is delivered from a different
URL than the main .m3u8 file.


=head2 CaptionLanguageMappings => ArrayRef[MediaConvert_HlsCaptionLanguageMapping]

  Language to be used on Caption outputs


=head2 CaptionLanguageSetting => Str

  Applies only to 608 Embedded output captions. Insert: Include
CLOSED-CAPTIONS lines in the manifest. Specify at least one language in
the CC1 Language Code field. One CLOSED-CAPTION line is added for each
Language Code you specify. Make sure to specify the languages in the
order in which they appear in the original source (if the source is
embedded format) or the order of the caption selectors (if the source
is other than embedded). Otherwise, languages in the manifest will not
match up properly with the output captions. None: Include
CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any
CLOSED-CAPTIONS line from the manifest.


=head2 ClientCache => Str

  When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents
client from saving media segments for later replay.


=head2 CodecSpecification => Str

  Specification to use (RFC-6381 or the default RFC-4281) during m3u8
playlist generation.


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 DestinationSettings => MediaConvert_DestinationSettings

  Settings associated with the destination. Will vary based on the type
of destination


=head2 DirectoryStructure => Str

  Indicates whether segments should be placed in subdirectories.


=head2 Encryption => MediaConvert_HlsEncryptionSettings

  DRM settings.


=head2 ManifestCompression => Str

  When set to GZIP, compresses HLS playlist.


=head2 ManifestDurationFormat => Str

  Indicates whether the output manifest should use floating point values
for segment duration.


=head2 MinFinalSegmentLength => Num

  Keep this setting at the default value of 0, unless you are
troubleshooting a problem with how devices play back the end of your
video asset. If you know that player devices are hanging on the final
segment of your video because the length of your final segment is too
short, use this setting to specify a minimum final segment length, in
seconds. Choose a value that is greater than or equal to 1 and less
than your segment length. When you specify a value for this setting,
the encoder will combine any final segment that is shorter than the
length that you specify with the previous segment. For example, your
segment length is 3 seconds and your final segment is .5 seconds
without a minimum final segment length; when you set the minimum final
segment length to 1, your final segment is 3.5 seconds.


=head2 MinSegmentLength => Int

  When set, Minimum Segment Size is enforced by looking ahead and back
within the specified range for a nearby avail and extending the segment
size if needed.


=head2 OutputSelection => Str

  Indicates whether the .m3u8 manifest file should be generated for this
HLS output group.


=head2 ProgramDateTime => Str

  Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
files. The value is calculated as follows: either the program date and
time are initialized using the input timecode source, or the time is
initialized using the input timecode source and the date is initialized
using the timestamp_offset.


=head2 ProgramDateTimePeriod => Int

  Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.


=head2 SegmentControl => Str

  When set to SINGLE_FILE, emits program as a single media resource (.ts)
file, uses #EXT-X-BYTERANGE tags to index segment for playback.


=head2 SegmentLength => Int

  Length of MPEG-2 Transport Stream segments to create (in seconds). Note
that segments will end on the next keyframe after this number of
seconds, so actual segment length may be longer.


=head2 SegmentsPerSubdirectory => Int

  Number of segments to write to a subdirectory before starting a new
one. directoryStructure must be SINGLE_DIRECTORY for this setting to
have an effect.


=head2 StreamInfResolution => Str

  Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF
tag of variant manifest.


=head2 TimedMetadataId3Frame => Str

  Indicates ID3 frame that has the timecode.


=head2 TimedMetadataId3Period => Int

  Timed Metadata interval in seconds.


=head2 TimestampDeltaMilliseconds => Int

  Provides an extra millisecond delta offset to fine tune the timestamps.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

