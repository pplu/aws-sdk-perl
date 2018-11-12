package Paws::MediaConvert::CmafGroupSettings;
  use Moose;
  has BaseUrl => (is => 'ro', isa => 'Str', request_name => 'baseUrl', traits => ['NameInRequest']);
  has ClientCache => (is => 'ro', isa => 'Str', request_name => 'clientCache', traits => ['NameInRequest']);
  has CodecSpecification => (is => 'ro', isa => 'Str', request_name => 'codecSpecification', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConvert::CmafEncryptionSettings', request_name => 'encryption', traits => ['NameInRequest']);
  has FragmentLength => (is => 'ro', isa => 'Int', request_name => 'fragmentLength', traits => ['NameInRequest']);
  has ManifestCompression => (is => 'ro', isa => 'Str', request_name => 'manifestCompression', traits => ['NameInRequest']);
  has ManifestDurationFormat => (is => 'ro', isa => 'Str', request_name => 'manifestDurationFormat', traits => ['NameInRequest']);
  has MinBufferTime => (is => 'ro', isa => 'Int', request_name => 'minBufferTime', traits => ['NameInRequest']);
  has MinFinalSegmentLength => (is => 'ro', isa => 'Num', request_name => 'minFinalSegmentLength', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { BaseUrl => $value, ..., WriteHlsManifest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CmafGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseUrl

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each
output in a CMAF Output Group may only contain a single video, audio,
or caption output.

=head1 ATTRIBUTES


=head2 BaseUrl => Str

  A partial URI prefix that will be put in the manifest file at the top
level BaseURL element. Can be used if streams are delivered from a
different URL than the manifest file.


=head2 ClientCache => Str

  


=head2 CodecSpecification => Str

  


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


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

  


=head2 ManifestDurationFormat => Str

  


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


=head2 SegmentControl => Str

  


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

  


=head2 WriteDashManifest => Str

  


=head2 WriteHlsManifest => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

