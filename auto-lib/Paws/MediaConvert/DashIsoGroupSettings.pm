package Paws::MediaConvert::DashIsoGroupSettings;
  use Moose;
  has BaseUrl => (is => 'ro', isa => 'Str', request_name => 'baseUrl', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConvert::DashIsoEncryptionSettings', request_name => 'encryption', traits => ['NameInRequest']);
  has FragmentLength => (is => 'ro', isa => 'Int', request_name => 'fragmentLength', traits => ['NameInRequest']);
  has HbbtvCompliance => (is => 'ro', isa => 'Str', request_name => 'hbbtvCompliance', traits => ['NameInRequest']);
  has MinBufferTime => (is => 'ro', isa => 'Int', request_name => 'minBufferTime', traits => ['NameInRequest']);
  has SegmentControl => (is => 'ro', isa => 'Str', request_name => 'segmentControl', traits => ['NameInRequest']);
  has SegmentLength => (is => 'ro', isa => 'Int', request_name => 'segmentLength', traits => ['NameInRequest']);
  has WriteSegmentTimelineInRepresentation => (is => 'ro', isa => 'Str', request_name => 'writeSegmentTimelineInRepresentation', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DashIsoGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DashIsoGroupSettings object:

  $service_obj->Method(Att1 => { BaseUrl => $value, ..., WriteSegmentTimelineInRepresentation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DashIsoGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseUrl

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 BaseUrl => Str

  A partial URI prefix that will be put in the manifest (.mpd) file at
the top level BaseURL element. Can be used if streams are delivered
from a different URL than the manifest file.


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 Encryption => L<Paws::MediaConvert::DashIsoEncryptionSettings>

  DRM settings.


=head2 FragmentLength => Int

  Length of fragments to generate (in seconds). Fragment length must be
compatible with GOP size and Framerate. Note that fragments will end on
the next keyframe after this number of seconds, so actual fragment
length may be longer. When Emit Single File is checked, the
fragmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 HbbtvCompliance => Str

  


=head2 MinBufferTime => Int

  Minimum time of initially buffered media that is needed to ensure
smooth playout.


=head2 SegmentControl => Str

  


=head2 SegmentLength => Int

  Length of mpd segments to create (in seconds). Note that segments will
end on the next keyframe after this number of seconds, so actual
segment length may be longer. When Emit Single File is checked, the
segmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 WriteSegmentTimelineInRepresentation => Str

  When you enable Precise segment duration in manifests
(writeSegmentTimelineInRepresentation), your DASH manifest shows
precise segment durations. The segment duration information appears
inside the SegmentTimeline element, inside SegmentTemplate at the
Representation level. When this feature isn't enabled, the segment
durations in your DASH manifest are approximate. The segment duration
information appears in the duration attribute of the SegmentTemplate
element.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

