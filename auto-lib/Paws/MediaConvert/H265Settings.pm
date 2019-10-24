# Generated from default/object.tt
package Paws::MediaConvert::H265Settings;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaConvert::Types qw/MediaConvert_H265QvbrSettings/;
  has AdaptiveQuantization => (is => 'ro', isa => Str);
  has AlternateTransferFunctionSei => (is => 'ro', isa => Str);
  has Bitrate => (is => 'ro', isa => Int);
  has CodecLevel => (is => 'ro', isa => Str);
  has CodecProfile => (is => 'ro', isa => Str);
  has DynamicSubGop => (is => 'ro', isa => Str);
  has FlickerAdaptiveQuantization => (is => 'ro', isa => Str);
  has FramerateControl => (is => 'ro', isa => Str);
  has FramerateConversionAlgorithm => (is => 'ro', isa => Str);
  has FramerateDenominator => (is => 'ro', isa => Int);
  has FramerateNumerator => (is => 'ro', isa => Int);
  has GopBReference => (is => 'ro', isa => Str);
  has GopClosedCadence => (is => 'ro', isa => Int);
  has GopSize => (is => 'ro', isa => Num);
  has GopSizeUnits => (is => 'ro', isa => Str);
  has HrdBufferInitialFillPercentage => (is => 'ro', isa => Int);
  has HrdBufferSize => (is => 'ro', isa => Int);
  has InterlaceMode => (is => 'ro', isa => Str);
  has MaxBitrate => (is => 'ro', isa => Int);
  has MinIInterval => (is => 'ro', isa => Int);
  has NumberBFramesBetweenReferenceFrames => (is => 'ro', isa => Int);
  has NumberReferenceFrames => (is => 'ro', isa => Int);
  has ParControl => (is => 'ro', isa => Str);
  has ParDenominator => (is => 'ro', isa => Int);
  has ParNumerator => (is => 'ro', isa => Int);
  has QualityTuningLevel => (is => 'ro', isa => Str);
  has QvbrSettings => (is => 'ro', isa => MediaConvert_H265QvbrSettings);
  has RateControlMode => (is => 'ro', isa => Str);
  has SampleAdaptiveOffsetFilterMode => (is => 'ro', isa => Str);
  has SceneChangeDetect => (is => 'ro', isa => Str);
  has Slices => (is => 'ro', isa => Int);
  has SlowPal => (is => 'ro', isa => Str);
  has SpatialAdaptiveQuantization => (is => 'ro', isa => Str);
  has Telecine => (is => 'ro', isa => Str);
  has TemporalAdaptiveQuantization => (is => 'ro', isa => Str);
  has TemporalIds => (is => 'ro', isa => Str);
  has Tiles => (is => 'ro', isa => Str);
  has UnregisteredSeiTimecode => (is => 'ro', isa => Str);
  has WriteMp4PackagingType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WriteMp4PackagingType' => {
                                            'type' => 'Str'
                                          },
               'AdaptiveQuantization' => {
                                           'type' => 'Str'
                                         },
               'NumberReferenceFrames' => {
                                            'type' => 'Int'
                                          },
               'FramerateDenominator' => {
                                           'type' => 'Int'
                                         },
               'FramerateNumerator' => {
                                         'type' => 'Int'
                                       },
               'Slices' => {
                             'type' => 'Int'
                           },
               'TemporalIds' => {
                                  'type' => 'Str'
                                },
               'RateControlMode' => {
                                      'type' => 'Str'
                                    },
               'Telecine' => {
                               'type' => 'Str'
                             },
               'AlternateTransferFunctionSei' => {
                                                   'type' => 'Str'
                                                 },
               'Bitrate' => {
                              'type' => 'Int'
                            },
               'GopClosedCadence' => {
                                       'type' => 'Int'
                                     },
               'FlickerAdaptiveQuantization' => {
                                                  'type' => 'Str'
                                                },
               'DynamicSubGop' => {
                                    'type' => 'Str'
                                  },
               'ParDenominator' => {
                                     'type' => 'Int'
                                   },
               'HrdBufferSize' => {
                                    'type' => 'Int'
                                  },
               'QualityTuningLevel' => {
                                         'type' => 'Str'
                                       },
               'MinIInterval' => {
                                   'type' => 'Int'
                                 },
               'SceneChangeDetect' => {
                                        'type' => 'Str'
                                      },
               'Tiles' => {
                            'type' => 'Str'
                          },
               'FramerateControl' => {
                                       'type' => 'Str'
                                     },
               'CodecProfile' => {
                                   'type' => 'Str'
                                 },
               'GopBReference' => {
                                    'type' => 'Str'
                                  },
               'SampleAdaptiveOffsetFilterMode' => {
                                                     'type' => 'Str'
                                                   },
               'InterlaceMode' => {
                                    'type' => 'Str'
                                  },
               'SlowPal' => {
                              'type' => 'Str'
                            },
               'HrdBufferInitialFillPercentage' => {
                                                     'type' => 'Int'
                                                   },
               'UnregisteredSeiTimecode' => {
                                              'type' => 'Str'
                                            },
               'GopSize' => {
                              'type' => 'Num'
                            },
               'FramerateConversionAlgorithm' => {
                                                   'type' => 'Str'
                                                 },
               'MaxBitrate' => {
                                 'type' => 'Int'
                               },
               'ParControl' => {
                                 'type' => 'Str'
                               },
               'SpatialAdaptiveQuantization' => {
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
               'ParNumerator' => {
                                   'type' => 'Int'
                                 },
               'QvbrSettings' => {
                                   'class' => 'Paws::MediaConvert::H265QvbrSettings',
                                   'type' => 'MediaConvert_H265QvbrSettings'
                                 },
               'NumberBFramesBetweenReferenceFrames' => {
                                                          'type' => 'Int'
                                                        }
             },
  'NameInRequest' => {
                       'WriteMp4PackagingType' => 'writeMp4PackagingType',
                       'AdaptiveQuantization' => 'adaptiveQuantization',
                       'NumberReferenceFrames' => 'numberReferenceFrames',
                       'FramerateDenominator' => 'framerateDenominator',
                       'FramerateNumerator' => 'framerateNumerator',
                       'Slices' => 'slices',
                       'TemporalIds' => 'temporalIds',
                       'RateControlMode' => 'rateControlMode',
                       'Telecine' => 'telecine',
                       'AlternateTransferFunctionSei' => 'alternateTransferFunctionSei',
                       'Bitrate' => 'bitrate',
                       'GopClosedCadence' => 'gopClosedCadence',
                       'FlickerAdaptiveQuantization' => 'flickerAdaptiveQuantization',
                       'DynamicSubGop' => 'dynamicSubGop',
                       'ParDenominator' => 'parDenominator',
                       'HrdBufferSize' => 'hrdBufferSize',
                       'QualityTuningLevel' => 'qualityTuningLevel',
                       'MinIInterval' => 'minIInterval',
                       'SceneChangeDetect' => 'sceneChangeDetect',
                       'Tiles' => 'tiles',
                       'FramerateControl' => 'framerateControl',
                       'CodecProfile' => 'codecProfile',
                       'GopBReference' => 'gopBReference',
                       'SampleAdaptiveOffsetFilterMode' => 'sampleAdaptiveOffsetFilterMode',
                       'InterlaceMode' => 'interlaceMode',
                       'SlowPal' => 'slowPal',
                       'HrdBufferInitialFillPercentage' => 'hrdBufferInitialFillPercentage',
                       'UnregisteredSeiTimecode' => 'unregisteredSeiTimecode',
                       'GopSize' => 'gopSize',
                       'FramerateConversionAlgorithm' => 'framerateConversionAlgorithm',
                       'MaxBitrate' => 'maxBitrate',
                       'ParControl' => 'parControl',
                       'SpatialAdaptiveQuantization' => 'spatialAdaptiveQuantization',
                       'GopSizeUnits' => 'gopSizeUnits',
                       'CodecLevel' => 'codecLevel',
                       'TemporalAdaptiveQuantization' => 'temporalAdaptiveQuantization',
                       'ParNumerator' => 'parNumerator',
                       'QvbrSettings' => 'qvbrSettings',
                       'NumberBFramesBetweenReferenceFrames' => 'numberBFramesBetweenReferenceFrames'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::H265Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::H265Settings object:

  $service_obj->Method(Att1 => { AdaptiveQuantization => $value, ..., WriteMp4PackagingType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::H265Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdaptiveQuantization

=head1 DESCRIPTION

Settings for H265 codec

=head1 ATTRIBUTES


=head2 AdaptiveQuantization => Str

  Adaptive quantization. Allows intra-frame quantizers to vary to improve
visual quality.


=head2 AlternateTransferFunctionSei => Str

  Enables Alternate Transfer Function SEI message for outputs using
Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).


=head2 Bitrate => Int

  Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth
outputs, bitrates must be unique when rounded down to the nearest
multiple of 1000.


=head2 CodecLevel => Str

  H.265 Level.


=head2 CodecProfile => Str

  Represents the Profile and Tier, per the HEVC (H.265) specification.
Selections are grouped as [Profile] / [Tier], so "Main/High" represents
Main Profile with High Tier. 4:2:2 profiles are only available with the
HEVC 4:2:2 License.


=head2 DynamicSubGop => Str

  Choose Adaptive to improve subjective video quality for high-motion
content. This will cause the service to use fewer B-frames (which infer
information based on other frames) for high-motion portions of the
video and more B-frames for low-motion portions. The maximum number of
B-frames is limited by the value you provide for the setting B frames
between reference frames (numberBFramesBetweenReferenceFrames).


=head2 FlickerAdaptiveQuantization => Str

  Adjust quantization within each frame to reduce flicker or 'pop' on
I-frames.


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


=head2 GopBReference => Str

  If enable, use reference B frames for GOP structures that have B frames
E<gt> 1.


=head2 GopClosedCadence => Int

  Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 GopSize => Num

  GOP Length (keyframe interval) in frames or seconds. Must be greater
than zero.


=head2 GopSizeUnits => Str

  Indicates if the GOP Size in H265 is specified in frames or seconds. If
seconds the system will convert the GOP Size into a frame count at run
time.


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


=head2 MaxBitrate => Int

  Maximum bitrate in bits/second. For example, enter five megabits per
second as 5000000. Required when Rate control mode is QVBR.


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


=head2 NumberReferenceFrames => Int

  Number of reference frames to use. The encoder may use more than
requested if using B-frames and/or interlaced encoding.


=head2 ParControl => Str

  Using the API, enable ParFollowSource if you want the service to use
the pixel aspect ratio from the input. Using the console, do this by
choosing Follow source for Pixel aspect ratio.


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 QualityTuningLevel => Str

  Use Quality tuning level (H265QualityTuningLevel) to specifiy whether
to use fast single-pass, high-quality singlepass, or high-quality
multipass video encoding.


=head2 QvbrSettings => MediaConvert_H265QvbrSettings

  Settings for quality-defined variable bitrate encoding with the H.265
codec. Required when you set Rate control mode to QVBR. Not valid when
you set Rate control mode to a value other than QVBR, or when you don't
define Rate control mode.


=head2 RateControlMode => Str

  Use this setting to specify whether this output has a variable bitrate
(VBR), constant bitrate (CBR) or quality-defined variable bitrate
(QVBR).


=head2 SampleAdaptiveOffsetFilterMode => Str

  Specify Sample Adaptive Offset (SAO) filter strength. Adaptive mode
dynamically selects best strength based on content


=head2 SceneChangeDetect => Str

  Scene change detection (inserts I-frames on scene changes).


=head2 Slices => Int

  Number of slices per picture. Must be less than or equal to the number
of macroblock rows for progressive pictures, and less than or equal to
half the number of macroblock rows for interlaced pictures.


=head2 SlowPal => Str

  Enables Slow PAL rate conversion. 23.976fps and 24fps input is
relabeled as 25fps, and audio is sped up correspondingly.


=head2 SpatialAdaptiveQuantization => Str

  Adjust quantization within each frame based on spatial variation of
content complexity.


=head2 Telecine => Str

  This field applies only if the Streams E<gt> Advanced E<gt> Framerate
(framerate) field is set to 29.970. This field works with the Streams
E<gt> Advanced E<gt> Preprocessors E<gt> Deinterlacer field
(deinterlace_mode) and the Streams E<gt> Advanced E<gt> Interlaced Mode
field (interlace_mode) to identify the scan type for the output:
Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard:
produces 29.97i output from 23.976 input. - Soft: produces 23.976; the
player converts this output to 29.97i.


=head2 TemporalAdaptiveQuantization => Str

  Adjust quantization within each frame based on temporal variation of
content complexity.


=head2 TemporalIds => Str

  Enables temporal layer identifiers in the encoded bitstream. Up to 3
layers are supported depending on GOP structure: I- and P-frames form
one layer, reference B-frames can form a second layer and non-reference
b-frames can form a third layer. Decoders can optionally decode only
the lower temporal layers to generate a lower frame rate output. For
example, given a bitstream with temporal IDs and with b-frames = 1
(i.e. IbPbPb display order), a decoder could decode all the frames for
full frame rate output or only the I and P frames (lowest temporal
layer) for a half frame rate output.


=head2 Tiles => Str

  Enable use of tiles, allowing horizontal as well as vertical
subdivision of the encoded pictures.


=head2 UnregisteredSeiTimecode => Str

  Inserts timecode for each frame as 4 bytes of an unregistered SEI
message.


=head2 WriteMp4PackagingType => Str

  Use this setting only for outputs encoded with H.265 that are in CMAF
or DASH output groups. If you include writeMp4PackagingType in your
JSON job specification for other outputs, your video might not work
properly with downstream systems and video players. If the location of
parameter set NAL units don't matter in your workflow, ignore this
setting. The service defaults to marking your output as HEV1. Choose
HVC1 to mark your output as HVC1. This makes your output compliant with
this specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15
3rd Edition. For these outputs, the service stores parameter set NAL
units in the sample headers but not in the samples directly. Keep the
default HEV1 to mark your output as HEV1. For these outputs, the
service writes parameter set NAL units directly into the samples.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

