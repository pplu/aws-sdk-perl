package Paws::MediaConvert::HlsSettings;
  use Moose;
  has AudioGroupId => (is => 'ro', isa => 'Str', request_name => 'audioGroupId', traits => ['NameInRequest']);
  has AudioOnlyContainer => (is => 'ro', isa => 'Str', request_name => 'audioOnlyContainer', traits => ['NameInRequest']);
  has AudioRenditionSets => (is => 'ro', isa => 'Str', request_name => 'audioRenditionSets', traits => ['NameInRequest']);
  has AudioTrackType => (is => 'ro', isa => 'Str', request_name => 'audioTrackType', traits => ['NameInRequest']);
  has IFrameOnlyManifest => (is => 'ro', isa => 'Str', request_name => 'iFrameOnlyManifest', traits => ['NameInRequest']);
  has SegmentModifier => (is => 'ro', isa => 'Str', request_name => 'segmentModifier', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsSettings object:

  $service_obj->Method(Att1 => { AudioGroupId => $value, ..., SegmentModifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioGroupId

=head1 DESCRIPTION

Settings for HLS output groups

=head1 ATTRIBUTES


=head2 AudioGroupId => Str

  Specifies the group to which the audio Rendition belongs.


=head2 AudioOnlyContainer => Str

  Use this setting only in audio-only outputs. Choose MPEG-2 Transport
Stream (M2TS) to create a file in an MPEG2-TS container. Keep the
default value Automatic (AUTOMATIC) to create an audio-only file in a
raw container. Regardless of the value that you specify here, if this
output has video, the service will place the output into an MPEG2-TS
container.


=head2 AudioRenditionSets => Str

  List all the audio groups that are used with the video output stream.
Input all the audio GROUP-IDs that are associated to the video,
separate by ','.


=head2 AudioTrackType => Str

  Four types of audio-only tracks are supported: Audio-Only Variant
Stream The client can play back this audio-only stream instead of video
in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the
HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition
that the client should try to play back by default. Represented as an
EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
Alternate Audio, Auto Select, Not Default Alternate rendition that the
client may try to play back by default. Represented as an EXT-X-MEDIA
in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio,
not Auto Select Alternate rendition that the client will not try to
play back by default. Represented as an EXT-X-MEDIA in the HLS manifest
with DEFAULT=NO, AUTOSELECT=NO


=head2 IFrameOnlyManifest => Str

  When set to INCLUDE, writes I-Frame Only Manifest in addition to the
HLS manifest


=head2 SegmentModifier => Str

  Use this setting to add an identifying string to the filename of each
segment. The service adds this string between the name modifier and
segment index number. You can use format identifiers in the string. For
more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

