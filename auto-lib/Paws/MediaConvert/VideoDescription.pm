# Generated from default/object.tt
package Paws::MediaConvert::VideoDescription;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_Rectangle MediaConvert_VideoCodecSettings MediaConvert_VideoPreprocessor/;
  has AfdSignaling => (is => 'ro', isa => Str);
  has AntiAlias => (is => 'ro', isa => Str);
  has CodecSettings => (is => 'ro', isa => MediaConvert_VideoCodecSettings);
  has ColorMetadata => (is => 'ro', isa => Str);
  has Crop => (is => 'ro', isa => MediaConvert_Rectangle);
  has DropFrameTimecode => (is => 'ro', isa => Str);
  has FixedAfd => (is => 'ro', isa => Int);
  has Height => (is => 'ro', isa => Int);
  has Position => (is => 'ro', isa => MediaConvert_Rectangle);
  has RespondToAfd => (is => 'ro', isa => Str);
  has ScalingBehavior => (is => 'ro', isa => Str);
  has Sharpness => (is => 'ro', isa => Int);
  has TimecodeInsertion => (is => 'ro', isa => Str);
  has VideoPreprocessors => (is => 'ro', isa => MediaConvert_VideoPreprocessor);
  has Width => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'class' => 'Paws::MediaConvert::Rectangle',
                               'type' => 'MediaConvert_Rectangle'
                             },
               'Height' => {
                             'type' => 'Int'
                           },
               'Width' => {
                            'type' => 'Int'
                          },
               'VideoPreprocessors' => {
                                         'class' => 'Paws::MediaConvert::VideoPreprocessor',
                                         'type' => 'MediaConvert_VideoPreprocessor'
                                       },
               'ScalingBehavior' => {
                                      'type' => 'Str'
                                    },
               'RespondToAfd' => {
                                   'type' => 'Str'
                                 },
               'ColorMetadata' => {
                                    'type' => 'Str'
                                  },
               'AntiAlias' => {
                                'type' => 'Str'
                              },
               'Sharpness' => {
                                'type' => 'Int'
                              },
               'Crop' => {
                           'class' => 'Paws::MediaConvert::Rectangle',
                           'type' => 'MediaConvert_Rectangle'
                         },
               'FixedAfd' => {
                               'type' => 'Int'
                             },
               'TimecodeInsertion' => {
                                        'type' => 'Str'
                                      },
               'CodecSettings' => {
                                    'class' => 'Paws::MediaConvert::VideoCodecSettings',
                                    'type' => 'MediaConvert_VideoCodecSettings'
                                  },
               'DropFrameTimecode' => {
                                        'type' => 'Str'
                                      },
               'AfdSignaling' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Position' => 'position',
                       'Height' => 'height',
                       'Width' => 'width',
                       'VideoPreprocessors' => 'videoPreprocessors',
                       'ScalingBehavior' => 'scalingBehavior',
                       'RespondToAfd' => 'respondToAfd',
                       'ColorMetadata' => 'colorMetadata',
                       'AntiAlias' => 'antiAlias',
                       'Sharpness' => 'sharpness',
                       'Crop' => 'crop',
                       'FixedAfd' => 'fixedAfd',
                       'TimecodeInsertion' => 'timecodeInsertion',
                       'CodecSettings' => 'codecSettings',
                       'DropFrameTimecode' => 'dropFrameTimecode',
                       'AfdSignaling' => 'afdSignaling'
                     }
}
;
    return $Params_map;
  }


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

  The service automatically applies the anti-alias filter to all outputs.
The service no longer accepts the value DISABLED for AntiAlias. If you
specify that in your job, the service will ignore the setting.


=head2 CodecSettings => MediaConvert_VideoCodecSettings

  Video codec settings, (CodecSettings) under (VideoDescription),
contains the group of settings related to video encoding. The settings
in this group vary depending on the value you choose for Video codec
(Codec). For each codec enum you choose, define the corresponding
settings object. The following lists the codec enum, settings object
pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2,
Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE,
FrameCaptureSettings


=head2 ColorMetadata => Str

  Enable Insert color metadata (ColorMetadata) to include color metadata
in this output. This setting is enabled by default.


=head2 Crop => MediaConvert_Rectangle

  Applies only if your input aspect ratio is different from your output
aspect ratio. Use Input cropping rectangle (Crop) to specify the video
area the service will include in the output. This will crop the input
source, causing video pixels to be removed on encode. If you crop your
input frame size to smaller than your output frame size, make sure to
specify the behavior you want in your output setting "Scaling
behavior".


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


=head2 Position => MediaConvert_Rectangle

  Use Position (Position) to point to a rectangle object to define your
position. This setting overrides any other aspect ratio.


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

  Applies only if your input aspect ratio is different from your output
aspect ratio. Choose "Stretch to output" to have the service stretch
your video image to fit. Keep the setting "Default" to allow the
service to letterbox your video instead. This setting overrides any
positioning value you specify elsewhere in the job.


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


=head2 VideoPreprocessors => MediaConvert_VideoPreprocessor

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

