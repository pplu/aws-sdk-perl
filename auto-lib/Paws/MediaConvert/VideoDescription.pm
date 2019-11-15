package Paws::MediaConvert::VideoDescription;
  use Moose;
  has AfdSignaling => (is => 'ro', isa => 'Str', request_name => 'afdSignaling', traits => ['NameInRequest']);
  has AntiAlias => (is => 'ro', isa => 'Str', request_name => 'antiAlias', traits => ['NameInRequest']);
  has CodecSettings => (is => 'ro', isa => 'Paws::MediaConvert::VideoCodecSettings', request_name => 'codecSettings', traits => ['NameInRequest']);
  has ColorMetadata => (is => 'ro', isa => 'Str', request_name => 'colorMetadata', traits => ['NameInRequest']);
  has Crop => (is => 'ro', isa => 'Paws::MediaConvert::Rectangle', request_name => 'crop', traits => ['NameInRequest']);
  has DropFrameTimecode => (is => 'ro', isa => 'Str', request_name => 'dropFrameTimecode', traits => ['NameInRequest']);
  has FixedAfd => (is => 'ro', isa => 'Int', request_name => 'fixedAfd', traits => ['NameInRequest']);
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has Position => (is => 'ro', isa => 'Paws::MediaConvert::Rectangle', request_name => 'position', traits => ['NameInRequest']);
  has RespondToAfd => (is => 'ro', isa => 'Str', request_name => 'respondToAfd', traits => ['NameInRequest']);
  has ScalingBehavior => (is => 'ro', isa => 'Str', request_name => 'scalingBehavior', traits => ['NameInRequest']);
  has Sharpness => (is => 'ro', isa => 'Int', request_name => 'sharpness', traits => ['NameInRequest']);
  has TimecodeInsertion => (is => 'ro', isa => 'Str', request_name => 'timecodeInsertion', traits => ['NameInRequest']);
  has VideoPreprocessors => (is => 'ro', isa => 'Paws::MediaConvert::VideoPreprocessor', request_name => 'videoPreprocessors', traits => ['NameInRequest']);
  has Width => (is => 'ro', isa => 'Int', request_name => 'width', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::VideoDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::VideoDescription object:

  $service_obj->Method(Att1 => { AfdSignaling => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::VideoDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AfdSignaling

=head1 DESCRIPTION

Settings for video outputs

=head1 ATTRIBUTES


=head2 AfdSignaling => Str

  This setting only applies to H.264, H.265, and MPEG2 outputs. Use
Insert AFD signaling (AfdSignaling) to specify whether the service
includes AFD values in the output video data and what those values are.
* Choose None to remove all AFD values from this output. * Choose Fixed
to ignore input AFD values and instead encode the value specified in
the job. * Choose Auto to calculate output AFD values based on the
input AFD scaler data.


=head2 AntiAlias => Str

  The anti-alias filter is automatically applied to all outputs. The
service no longer accepts the value DISABLED for AntiAlias. If you
specify that in your job, the service will ignore the setting.


=head2 CodecSettings => L<Paws::MediaConvert::VideoCodecSettings>

  Video codec settings, (CodecSettings) under (VideoDescription),
contains the group of settings related to video encoding. The settings
in this group vary depending on the value that you choose for Video
codec (Codec). For each codec enum that you choose, define the
corresponding settings object. The following lists the codec enum,
settings object pairs. * H_264, H264Settings * H_265, H265Settings *
MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE,
FrameCaptureSettings


=head2 ColorMetadata => Str

  Choose Insert (INSERT) for this setting to include color metadata in
this output. Choose Ignore (IGNORE) to exclude color metadata from this
output. If you don't specify a value, the service sets this to Insert
by default.


=head2 Crop => L<Paws::MediaConvert::Rectangle>

  Use Cropping selection (crop) to specify the video area that the
service will include in the output video frame.


=head2 DropFrameTimecode => Str

  Applies only to 29.97 fps outputs. When this feature is enabled, the
service will use drop-frame timecode on outputs. If it is not possible
to use drop-frame timecode, the system will fall back to
non-drop-frame. This setting is enabled by default when Timecode
insertion (TimecodeInsertion) is enabled.


=head2 FixedAfd => Int

  Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED).
Use Fixed (FixedAfd) to specify a four-bit AFD value which the service
will write on all frames of this video output.


=head2 Height => Int

  Use the Height (Height) setting to define the video resolution height
for this output. Specify in pixels. If you don't provide a value here,
the service will use the input height.


=head2 Position => L<Paws::MediaConvert::Rectangle>

  Use Selection placement (position) to define the video area in your
output frame. The area outside of the rectangle that you specify here
is black.


=head2 RespondToAfd => Str

  Use Respond to AFD (RespondToAfd) to specify how the service changes
the video itself in response to AFD values in the input. * Choose
Respond to clip the input video frame according to the AFD value, input
display aspect ratio, and output display aspect ratio. * Choose
Passthrough to include the input AFD values. Do not choose this when
AfdSignaling is set to (NONE). A preferred implementation of this
workflow is to set RespondToAfd to (NONE) and set AfdSignaling to
(AUTO). * Choose None to remove all input AFD values from this output.


=head2 ScalingBehavior => Str

  Specify how the service handles outputs that have a different aspect
ratio from the input aspect ratio. Choose Stretch to output
(STRETCH_TO_OUTPUT) to have the service stretch your video image to
fit. Keep the setting Default (DEFAULT) to have the service letterbox
your video instead. This setting overrides any value that you specify
for the setting Selection placement (position) in this output.


=head2 Sharpness => Int

  Use Sharpness (Sharpness) setting to specify the strength of
anti-aliasing. This setting changes the width of the anti-alias filter
kernel used for scaling. Sharpness only applies if your output
resolution is different from your input resolution. 0 is the softest
setting, 100 the sharpest, and 50 recommended for most content.


=head2 TimecodeInsertion => Str

  Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable
Timecode insertion when the input frame rate is identical to the output
frame rate. To include timecodes in this output, set Timecode insertion
(VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it
to DISABLED. Default is DISABLED. When the service inserts timecodes in
an output, by default, it uses any embedded timecodes from the input.
If none are present, the service will set the timecode for the first
output frame to zero. To change this default behavior, adjust the
settings under Timecode configuration (TimecodeConfig). In the console,
these settings are located under Job E<gt> Job settings E<gt> Timecode
configuration. Note - Timecode source under input settings
(InputTimecodeSource) does not affect the timecodes that are inserted
in the output. Source under Job settings E<gt> Timecode configuration
(TimecodeSource) does.


=head2 VideoPreprocessors => L<Paws::MediaConvert::VideoPreprocessor>

  Find additional transcoding features under Preprocessors
(VideoPreprocessors). Enable the features at each output individually.
These features are disabled by default.


=head2 Width => Int

  Use Width (Width) to define the video resolution width, in pixels, for
this output. If you don't provide a value here, the service will use
the input width.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

