package Paws::MediaLive::VideoDescription;
  use Moose;
  has CodecSettings => (is => 'ro', isa => 'Paws::MediaLive::VideoCodecSettings', request_name => 'codecSettings', traits => ['NameInRequest']);
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has RespondToAfd => (is => 'ro', isa => 'Str', request_name => 'respondToAfd', traits => ['NameInRequest']);
  has ScalingBehavior => (is => 'ro', isa => 'Str', request_name => 'scalingBehavior', traits => ['NameInRequest']);
  has Sharpness => (is => 'ro', isa => 'Int', request_name => 'sharpness', traits => ['NameInRequest']);
  has Width => (is => 'ro', isa => 'Int', request_name => 'width', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoDescription object:

  $service_obj->Method(Att1 => { CodecSettings => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CodecSettings

=head1 DESCRIPTION

Video settings for this stream.

=head1 ATTRIBUTES


=head2 CodecSettings => L<Paws::MediaLive::VideoCodecSettings>

  Video codec settings.


=head2 Height => Int

  Output video height, in pixels. Must be an even number. For most
codecs, you can leave this field and width blank in order to use the
height and width (resolution) from the source. Note, however, that
leaving blank is not recommended. For the Frame Capture codec, height
and width are required.


=head2 B<REQUIRED> Name => Str

  The name of this VideoDescription. Outputs will use this name to
uniquely identify this Description. Description names should be unique
within this Live Event.


=head2 RespondToAfd => Str

  Indicates how to respond to the AFD values in the input stream. RESPOND
causes input video to be clipped, depending on the AFD value, input
display aspect ratio, and output display aspect ratio, and (except for
FRAMECAPTURE codec) includes the values in the output. PASSTHROUGH
(does not apply to FRAMECAPTURE codec) ignores the AFD values and
includes the values in the output, so input video is not clipped. NONE
ignores the AFD values and does not include the values through to the
output, so input video is not clipped.


=head2 ScalingBehavior => Str

  STRETCHTOOUTPUT configures the output position to stretch the video to
the specified output resolution (height and width). This option will
override any position value. DEFAULT may insert black boxes (pillar
boxes or letter boxes) around the video to provide the specified output
resolution.


=head2 Sharpness => Int

  Changes the strength of the anti-alias filter used for scaling. 0 is
the softest setting, 100 is the sharpest. A setting of 50 is
recommended for most content.


=head2 Width => Int

  Output video width, in pixels. Must be an even number. For most codecs,
you can leave this field and height blank in order to use the height
and width (resolution) from the source. Note, however, that leaving
blank is not recommended. For the Frame Capture codec, height and width
are required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

