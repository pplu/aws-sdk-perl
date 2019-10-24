# Generated from default/object.tt
package Paws::MediaConvert::Mpeg2Settings;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaConvert::Types qw//;
  has AdaptiveQuantization => (is => 'ro', isa => Str);
  has Bitrate => (is => 'ro', isa => Int);
  has CodecLevel => (is => 'ro', isa => Str);
  has CodecProfile => (is => 'ro', isa => Str);
  has DynamicSubGop => (is => 'ro', isa => Str);
  has FramerateControl => (is => 'ro', isa => Str);
  has FramerateConversionAlgorithm => (is => 'ro', isa => Str);
  has FramerateDenominator => (is => 'ro', isa => Int);
  has FramerateNumerator => (is => 'ro', isa => Int);
  has GopClosedCadence => (is => 'ro', isa => Int);
  has GopSize => (is => 'ro', isa => Num);
  has GopSizeUnits => (is => 'ro', isa => Str);
  has HrdBufferInitialFillPercentage => (is => 'ro', isa => Int);
  has HrdBufferSize => (is => 'ro', isa => Int);
  has InterlaceMode => (is => 'ro', isa => Str);
  has IntraDcPrecision => (is => 'ro', isa => Str);
  has MaxBitrate => (is => 'ro', isa => Int);
  has MinIInterval => (is => 'ro', isa => Int);
  has NumberBFramesBetweenReferenceFrames => (is => 'ro', isa => Int);
  has ParControl => (is => 'ro', isa => Str);
  has ParDenominator => (is => 'ro', isa => Int);
  has ParNumerator => (is => 'ro', isa => Int);
  has QualityTuningLevel => (is => 'ro', isa => Str);
  has RateControlMode => (is => 'ro', isa => Str);
  has SceneChangeDetect => (is => 'ro', isa => Str);
  has SlowPal => (is => 'ro', isa => Str);
  has Softness => (is => 'ro', isa => Int);
  has SpatialAdaptiveQuantization => (is => 'ro', isa => Str);
  has Syntax => (is => 'ro', isa => Str);
  has Telecine => (is => 'ro', isa => Str);
  has TemporalAdaptiveQuantization => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SceneChangeDetect' => {
                                        'type' => 'Str'
                                      },
               'AdaptiveQuantization' => {
                                           'type' => 'Str'
                                         },
               'FramerateControl' => {
                                       'type' => 'Str'
                                     },
               'CodecProfile' => {
                                   'type' => 'Str'
                                 },
               'FramerateDenominator' => {
                                           'type' => 'Int'
                                         },
               'FramerateNumerator' => {
                                         'type' => 'Int'
                                       },
               'RateControlMode' => {
                                      'type' => 'Str'
                                    },
               'InterlaceMode' => {
                                    'type' => 'Str'
                                  },
               'Telecine' => {
                               'type' => 'Str'
                             },
               'SlowPal' => {
                              'type' => 'Str'
                            },
               'Bitrate' => {
                              'type' => 'Int'
                            },
               'HrdBufferInitialFillPercentage' => {
                                                     'type' => 'Int'
                                                   },
               'GopClosedCadence' => {
                                       'type' => 'Int'
                                     },
               'GopSize' => {
                              'type' => 'Num'
                            },
               'Softness' => {
                               'type' => 'Int'
                             },
               'ParControl' => {
                                 'type' => 'Str'
                               },
               'MaxBitrate' => {
                                 'type' => 'Int'
                               },
               'FramerateConversionAlgorithm' => {
                                                   'type' => 'Str'
                                                 },
               'SpatialAdaptiveQuantization' => {
                                                  'type' => 'Str'
                                                },
               'IntraDcPrecision' => {
                                       'type' => 'Str'
                                     },
               'DynamicSubGop' => {
                                    'type' => 'Str'
                                  },
               'GopSizeUnits' => {
                                   'type' => 'Str'
                                 },
               'CodecLevel' => {
                                 'type' => 'Str'
                               },
               'TemporalAdaptiveQuantization' => {
                                                   'type' => 'Str'
                                                 },
               'Syntax' => {
                             'type' => 'Str'
                           },
               'ParNumerator' => {
                                   'type' => 'Int'
                                 },
               'ParDenominator' => {
                                     'type' => 'Int'
                                   },
               'HrdBufferSize' => {
                                    'type' => 'Int'
                                  },
               'NumberBFramesBetweenReferenceFrames' => {
                                                          'type' => 'Int'
                                                        },
               'QualityTuningLevel' => {
                                         'type' => 'Str'
                                       },
               'MinIInterval' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'SceneChangeDetect' => 'sceneChangeDetect',
                       'AdaptiveQuantization' => 'adaptiveQuantization',
                       'FramerateControl' => 'framerateControl',
                       'CodecProfile' => 'codecProfile',
                       'FramerateDenominator' => 'framerateDenominator',
                       'FramerateNumerator' => 'framerateNumerator',
                       'RateControlMode' => 'rateControlMode',
                       'InterlaceMode' => 'interlaceMode',
                       'Telecine' => 'telecine',
                       'SlowPal' => 'slowPal',
                       'Bitrate' => 'bitrate',
                       'HrdBufferInitialFillPercentage' => 'hrdBufferInitialFillPercentage',
                       'GopClosedCadence' => 'gopClosedCadence',
                       'GopSize' => 'gopSize',
                       'Softness' => 'softness',
                       'ParControl' => 'parControl',
                       'MaxBitrate' => 'maxBitrate',
                       'FramerateConversionAlgorithm' => 'framerateConversionAlgorithm',
                       'SpatialAdaptiveQuantization' => 'spatialAdaptiveQuantization',
                       'IntraDcPrecision' => 'intraDcPrecision',
                       'DynamicSubGop' => 'dynamicSubGop',
                       'GopSizeUnits' => 'gopSizeUnits',
                       'CodecLevel' => 'codecLevel',
                       'TemporalAdaptiveQuantization' => 'temporalAdaptiveQuantization',
                       'Syntax' => 'syntax',
                       'ParNumerator' => 'parNumerator',
                       'ParDenominator' => 'parDenominator',
                       'HrdBufferSize' => 'hrdBufferSize',
                       'NumberBFramesBetweenReferenceFrames' => 'numberBFramesBetweenReferenceFrames',
                       'QualityTuningLevel' => 'qualityTuningLevel',
                       'MinIInterval' => 'minIInterval'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Mpeg2Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Mpeg2Settings object:

  $service_obj->Method(Att1 => { AdaptiveQuantization => $value, ..., TemporalAdaptiveQuantization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Mpeg2Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdaptiveQuantization

=head1 DESCRIPTION

Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value MPEG2.

=head1 ATTRIBUTES


=head2 AdaptiveQuantization => Str

  Adaptive quantization. Allows intra-frame quantizers to vary to improve
visual quality.


=head2 Bitrate => Int

  Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth
outputs, bitrates must be unique when rounded down to the nearest
multiple of 1000.


=head2 CodecLevel => Str

  Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video
output.


=head2 CodecProfile => Str

  Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video
output.


=head2 DynamicSubGop => Str

  Choose Adaptive to improve subjective video quality for high-motion
content. This will cause the service to use fewer B-frames (which infer
information based on other frames) for high-motion portions of the
video and more B-frames for low-motion portions. The maximum number of
B-frames is limited by the value you provide for the setting B frames
between reference frames (numberBFramesBetweenReferenceFrames).


=head2 FramerateControl => Str

  If you are using the console, use the Framerate setting to specify the
frame rate for this output. If you want to keep the same frame rate as
the input video, choose Follow source. If you want to do frame rate
conversion, choose a frame rate from the dropdown list or choose
Custom. The framerates shown in the dropdown list are decimal
approximations of fractions. If you choose Custom, specify your frame
rate as a fraction. If you are creating your transcoding job
sepecification as a JSON file without the console, use FramerateControl
to specify which value the service uses for the frame rate for this
output. Choose INITIALIZE_FROM_SOURCE if you want the service to use
the frame rate from the input. Choose SPECIFIED if you want the service
to use the frame rate you specify in the settings FramerateNumerator
and FramerateDenominator.


=head2 FramerateConversionAlgorithm => Str

  When set to INTERPOLATE, produces smoother motion during frame rate
conversion.


=head2 FramerateDenominator => Int

  Frame rate denominator.


=head2 FramerateNumerator => Int

  Frame rate numerator - frame rate is a fraction, e.g. 24000 / 1001 =
23.976 fps.


=head2 GopClosedCadence => Int

  Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 GopSize => Num

  GOP Length (keyframe interval) in frames or seconds. Must be greater
than zero.


=head2 GopSizeUnits => Str

  Indicates if the GOP Size in MPEG2 is specified in frames or seconds.
If seconds the system will convert the GOP Size into a frame count at
run time.


=head2 HrdBufferInitialFillPercentage => Int

  Percentage of the buffer that should initially be filled (HRD buffer
model).


=head2 HrdBufferSize => Int

  Size of buffer (HRD buffer model) in bits. For example, enter five
megabits as 5000000.


=head2 InterlaceMode => Str

  Use Interlace mode (InterlaceMode) to choose the scan line type for the
output. * Top Field First (TOP_FIELD) and Bottom Field First
(BOTTOM_FIELD) produce interlaced output with the entire output having
the same field polarity (top or bottom first). * Follow, Default Top
(FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use
the same field polarity as the source. Therefore, behavior depends on
the input scan type. - If the source is interlaced, the output will be
interlaced with the same polarity as the source (it will follow the
source). The output could therefore be a mix of "top field first" and
"bottom field first". - If the source is progressive, the output will
be interlaced with "top field first" or "bottom field first" polarity,
depending on which of the Follow options you chose.


=head2 IntraDcPrecision => Str

  Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization
precision for intra-block DC coefficients. If you choose the value
auto, the service will automatically select the precision based on the
per-frame compression ratio.


=head2 MaxBitrate => Int

  Maximum bitrate in bits/second. For example, enter five megabits per
second as 5000000.


=head2 MinIInterval => Int

  Enforces separation between repeated (cadence) I-frames and I-frames
inserted by Scene Change Detection. If a scene change I-frame is within
I-interval frames of a cadence I-frame, the GOP is shrunk and/or
stretched to the scene change I-frame. GOP stretch requires enabling
lookahead as well as setting I-interval. The normal cadence resumes for
the next GOP. This setting is only used when Scene Change Detect is
enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1


=head2 NumberBFramesBetweenReferenceFrames => Int

  Number of B-frames between reference frames.


=head2 ParControl => Str

  Using the API, enable ParFollowSource if you want the service to use
the pixel aspect ratio from the input. Using the console, do this by
choosing Follow source for Pixel aspect ratio.


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 QualityTuningLevel => Str

  Use Quality tuning level (Mpeg2QualityTuningLevel) to specifiy whether
to use single-pass or multipass video encoding.


=head2 RateControlMode => Str

  Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the
bitrate is variable (vbr) or constant (cbr).


=head2 SceneChangeDetect => Str

  Scene change detection (inserts I-frames on scene changes).


=head2 SlowPal => Str

  Enables Slow PAL rate conversion. 23.976fps and 24fps input is
relabeled as 25fps, and audio is sped up correspondingly.


=head2 Softness => Int

  Softness. Selects quantizer matrix, larger values reduce high-frequency
content in the encoded image.


=head2 SpatialAdaptiveQuantization => Str

  Adjust quantization within each frame based on spatial variation of
content complexity.


=head2 Syntax => Str

  Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).


=head2 Telecine => Str

  Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to
29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i
output from a 23.976 input. Set it to Soft (soft) to produce 23.976
output and leave converstion to the player.


=head2 TemporalAdaptiveQuantization => Str

  Adjust quantization within each frame based on temporal variation of
content complexity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

