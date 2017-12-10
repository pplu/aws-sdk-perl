package Paws::MediaLive::AudioOnlyHlsSettings;
  use Moose;
  has AudioGroupId => (is => 'ro', isa => 'Str', request_name => 'audioGroupId', traits => ['NameInRequest']);
  has AudioOnlyImage => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'audioOnlyImage', traits => ['NameInRequest']);
  has AudioTrackType => (is => 'ro', isa => 'Str', request_name => 'audioTrackType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioOnlyHlsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioOnlyHlsSettings object:

  $service_obj->Method(Att1 => { AudioGroupId => $value, ..., AudioTrackType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioOnlyHlsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioGroupId

=head1 DESCRIPTION

Placeholder documentation for AudioOnlyHlsSettings

=head1 ATTRIBUTES


=head2 AudioGroupId => Str

  Specifies the group to which the audio Rendition belongs.


=head2 AudioOnlyImage => L<Paws::MediaLive::InputLocation>

  For use with an audio only Stream. Must be a .jpg or .png file. If
given, this image will be used as the cover-art for the audio only
output. Ideally, it should be formatted for an iPhone screen for two
reasons. The iPhone does not resize the image, it crops a centered
image on the top/bottom and left/right. Additionally, this image file
gets saved bit-for-bit into every 10-second segment file, so will
increase bandwidth by {image file size} * {segment count} * {user
count.}.


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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

