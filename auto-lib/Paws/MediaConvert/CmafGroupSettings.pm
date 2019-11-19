package Paws::MediaConvert::CmafGroupSettings;
  use Moose;
  has AdditionalManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::CmafAdditionalManifest]', request_name => 'additionalManifests', traits => ['NameInRequest']);
  has BaseUrl => (is => 'ro', isa => 'Str', request_name => 'baseUrl', traits => ['NameInRequest']);
  has ClientCache => (is => 'ro', isa => 'Str', request_name => 'clientCache', traits => ['NameInRequest']);
  has CodecSpecification => (is => 'ro', isa => 'Str', request_name => 'codecSpecification', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has DestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::DestinationSettings', request_name => 'destinationSettings', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConvert::CmafEncryptionSettings', request_name => 'encryption', traits => ['NameInRequest']);
  has FragmentLength => (is => 'ro', isa => 'Int', request_name => 'fragmentLength', traits => ['NameInRequest']);
  has ManifestCompression => (is => 'ro', isa => 'Str', request_name => 'manifestCompression', traits => ['NameInRequest']);
  has ManifestDurationFormat => (is => 'ro', isa => 'Str', request_name => 'manifestDurationFormat', traits => ['NameInRequest']);
  has MinBufferTime => (is => 'ro', isa => 'Int', request_name => 'minBufferTime', traits => ['NameInRequest']);
  has MinFinalSegmentLength => (is => 'ro', isa => 'Num', request_name => 'minFinalSegmentLength', traits => ['NameInRequest']);
  has MpdProfile => (is => 'ro', isa => 'Str', request_name => 'mpdProfile', traits => ['NameInRequest']);
  has SegmentControl => (is => 'ro', isa => 'Str', request_name => 'segmentControl', traits => ['NameInRequest']);
  has SegmentLength => (is => 'ro', isa => 'Int', request_name => 'segmentLength', traits => ['NameInRequest']);
  has StreamInfResolution => (is => 'ro', isa => 'Str', request_name => 'streamInfResolution', traits => ['NameInRequest']);
  has WriteDashManifest => (is => 'ro', isa => 'Str', request_name => 'writeDashManifest', traits => ['NameInRequest']);
  has WriteHlsManifest => (is => 'ro', isa => 'Str', request_name => 'writeHlsManifest', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CmafGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CmafGroupSettings object:

  $service_obj->Method(Att1 => { AdditionalManifests => $value, ..., WriteHlsManifest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CmafGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalManifests

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each
output in a CMAF Output Group may only contain a single video, audio,
or caption output.

=head1 ATTRIBUTES


=head2 AdditionalManifests => ArrayRef[L<Paws::MediaConvert::CmafAdditionalManifest>]

  By default, the service creates one top-level .m3u8 HLS manifest and
one top -level .mpd DASH manifest for each CMAF output group in your
job. These default manifests reference every output in the output
group. To create additional top-level manifests that reference a subset
of the outputs in the output group, specify a list of them here. For
each additional manifest that you specify, the service creates one HLS
manifest and one DASH manifest.


=head2 BaseUrl => Str

  A partial URI prefix that will be put in the manifest file at the top
level BaseURL element. Can be used if streams are delivered from a
different URL than the manifest file.


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


=head2 DestinationSettings => L<Paws::MediaConvert::DestinationSettings>

  Settings associated with the destination. Will vary based on the type
of destination


=head2 Encryption => L<Paws::MediaConvert::CmafEncryptionSettings>

  DRM settings.


=head2 FragmentLength => Int

  Length of fragments to generate (in seconds). Fragment length must be
compatible with GOP size and Framerate. Note that fragments will end on
the next keyframe after this number of seconds, so actual fragment
length may be longer. When Emit Single File is checked, the
fragmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 ManifestCompression => Str

  When set to GZIP, compresses HLS playlist.


=head2 ManifestDurationFormat => Str

  Indicates whether the output manifest should use floating point values
for segment duration.


=head2 MinBufferTime => Int

  Minimum time of initially buffered media that is needed to ensure
smooth playout.


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


=head2 MpdProfile => Str

  Specify whether your DASH profile is on-demand or main. When you choose
Main profile (MAIN_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When
you choose On-demand (ON_DEMAND_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you
choose On-demand, you must also set the output group setting Segment
control (SegmentControl) to Single file (SINGLE_FILE).


=head2 SegmentControl => Str

  When set to SINGLE_FILE, a single output file is generated, which is
internally segmented using the Fragment Length and Segment Length. When
set to SEGMENTED_FILES, separate segment files will be created.


=head2 SegmentLength => Int

  Use this setting to specify the length, in seconds, of each individual
CMAF segment. This value applies to the whole package; that is, to
every output in the output group. Note that segments end on the first
keyframe after this number of seconds, so the actual segment length
might be slightly longer. If you set Segment control
(CmafSegmentControl) to single file, the service puts the content of
each output in a single file that has metadata that marks these
segments. If you set it to segmented files, the service creates
multiple files for each output, each with the content of one segment.


=head2 StreamInfResolution => Str

  Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF
tag of variant manifest.


=head2 WriteDashManifest => Str

  When set to ENABLED, a DASH MPD manifest will be generated for this
output.


=head2 WriteHlsManifest => Str

  When set to ENABLED, an Apple HLS manifest will be generated for this
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

