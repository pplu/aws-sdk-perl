# Generated from default/object.tt
package Paws::MediaLive::H264Settings;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::MediaLive::Types qw/MediaLive_H264ColorSpaceSettings/;
  has AdaptiveQuantization => (is => 'ro', isa => Str);
  has AfdSignaling => (is => 'ro', isa => Str);
  has Bitrate => (is => 'ro', isa => Int);
  has BufFillPct => (is => 'ro', isa => Int);
  has BufSize => (is => 'ro', isa => Int);
  has ColorMetadata => (is => 'ro', isa => Str);
  has ColorSpaceSettings => (is => 'ro', isa => MediaLive_H264ColorSpaceSettings);
  has EntropyEncoding => (is => 'ro', isa => Str);
  has FixedAfd => (is => 'ro', isa => Str);
  has FlickerAq => (is => 'ro', isa => Str);
  has FramerateControl => (is => 'ro', isa => Str);
  has FramerateDenominator => (is => 'ro', isa => Int);
  has FramerateNumerator => (is => 'ro', isa => Int);
  has GopBReference => (is => 'ro', isa => Str);
  has GopClosedCadence => (is => 'ro', isa => Int);
  has GopNumBFrames => (is => 'ro', isa => Int);
  has GopSize => (is => 'ro', isa => Num);
  has GopSizeUnits => (is => 'ro', isa => Str);
  has Level => (is => 'ro', isa => Str);
  has LookAheadRateControl => (is => 'ro', isa => Str);
  has MaxBitrate => (is => 'ro', isa => Int);
  has MinIInterval => (is => 'ro', isa => Int);
  has NumRefFrames => (is => 'ro', isa => Int);
  has ParControl => (is => 'ro', isa => Str);
  has ParDenominator => (is => 'ro', isa => Int);
  has ParNumerator => (is => 'ro', isa => Int);
  has Profile => (is => 'ro', isa => Str);
  has QvbrQualityLevel => (is => 'ro', isa => Int);
  has RateControlMode => (is => 'ro', isa => Str);
  has ScanType => (is => 'ro', isa => Str);
  has SceneChangeDetect => (is => 'ro', isa => Str);
  has Slices => (is => 'ro', isa => Int);
  has Softness => (is => 'ro', isa => Int);
  has SpatialAq => (is => 'ro', isa => Str);
  has SubgopLength => (is => 'ro', isa => Str);
  has Syntax => (is => 'ro', isa => Str);
  has TemporalAq => (is => 'ro', isa => Str);
  has TimecodeInsertion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumRefFrames' => {
                                   'type' => 'Int'
                                 },
               'ColorMetadata' => {
                                    'type' => 'Str'
                                  },
               'LookAheadRateControl' => {
                                           'type' => 'Str'
                                         },
               'GopBReference' => {
                                    'type' => 'Str'
                                  },
               'BufFillPct' => {
                                 'type' => 'Int'
                               },
               'FramerateDenominator' => {
                                           'type' => 'Int'
                                         },
               'SubgopLength' => {
                                   'type' => 'Str'
                                 },
               'ColorSpaceSettings' => {
                                         'type' => 'MediaLive_H264ColorSpaceSettings',
                                         'class' => 'Paws::MediaLive::H264ColorSpaceSettings'
                                       },
               'MaxBitrate' => {
                                 'type' => 'Int'
                               },
               'Softness' => {
                               'type' => 'Int'
                             },
               'ParDenominator' => {
                                     'type' => 'Int'
                                   },
               'Slices' => {
                             'type' => 'Int'
                           },
               'Bitrate' => {
                              'type' => 'Int'
                            },
               'GopNumBFrames' => {
                                    'type' => 'Int'
                                  },
               'ScanType' => {
                               'type' => 'Str'
                             },
               'Profile' => {
                              'type' => 'Str'
                            },
               'RateControlMode' => {
                                      'type' => 'Str'
                                    },
               'TemporalAq' => {
                                 'type' => 'Str'
                               },
               'GopClosedCadence' => {
                                       'type' => 'Int'
                                     },
               'AdaptiveQuantization' => {
                                           'type' => 'Str'
                                         },
               'GopSize' => {
                              'type' => 'Num'
                            },
               'QvbrQualityLevel' => {
                                       'type' => 'Int'
                                     },
               'GopSizeUnits' => {
                                   'type' => 'Str'
                                 },
               'BufSize' => {
                              'type' => 'Int'
                            },
               'Syntax' => {
                             'type' => 'Str'
                           },
               'EntropyEncoding' => {
                                      'type' => 'Str'
                                    },
               'MinIInterval' => {
                                   'type' => 'Int'
                                 },
               'SpatialAq' => {
                                'type' => 'Str'
                              },
               'SceneChangeDetect' => {
                                        'type' => 'Str'
                                      },
               'FixedAfd' => {
                               'type' => 'Str'
                             },
               'ParNumerator' => {
                                   'type' => 'Int'
                                 },
               'FramerateNumerator' => {
                                         'type' => 'Int'
                                       },
               'TimecodeInsertion' => {
                                        'type' => 'Str'
                                      },
               'Level' => {
                            'type' => 'Str'
                          },
               'FlickerAq' => {
                                'type' => 'Str'
                              },
               'FramerateControl' => {
                                       'type' => 'Str'
                                     },
               'ParControl' => {
                                 'type' => 'Str'
                               },
               'AfdSignaling' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'SceneChangeDetect' => 'sceneChangeDetect',
                       'SpatialAq' => 'spatialAq',
                       'MinIInterval' => 'minIInterval',
                       'EntropyEncoding' => 'entropyEncoding',
                       'Syntax' => 'syntax',
                       'BufSize' => 'bufSize',
                       'QvbrQualityLevel' => 'qvbrQualityLevel',
                       'GopSizeUnits' => 'gopSizeUnits',
                       'GopSize' => 'gopSize',
                       'GopClosedCadence' => 'gopClosedCadence',
                       'AdaptiveQuantization' => 'adaptiveQuantization',
                       'AfdSignaling' => 'afdSignaling',
                       'ParControl' => 'parControl',
                       'Level' => 'level',
                       'FramerateControl' => 'framerateControl',
                       'FlickerAq' => 'flickerAq',
                       'TimecodeInsertion' => 'timecodeInsertion',
                       'FramerateNumerator' => 'framerateNumerator',
                       'ParNumerator' => 'parNumerator',
                       'FixedAfd' => 'fixedAfd',
                       'ParDenominator' => 'parDenominator',
                       'Softness' => 'softness',
                       'MaxBitrate' => 'maxBitrate',
                       'SubgopLength' => 'subgopLength',
                       'ColorSpaceSettings' => 'colorSpaceSettings',
                       'BufFillPct' => 'bufFillPct',
                       'FramerateDenominator' => 'framerateDenominator',
                       'GopBReference' => 'gopBReference',
                       'LookAheadRateControl' => 'lookAheadRateControl',
                       'ColorMetadata' => 'colorMetadata',
                       'NumRefFrames' => 'numRefFrames',
                       'TemporalAq' => 'temporalAq',
                       'Profile' => 'profile',
                       'RateControlMode' => 'rateControlMode',
                       'GopNumBFrames' => 'gopNumBFrames',
                       'ScanType' => 'scanType',
                       'Bitrate' => 'bitrate',
                       'Slices' => 'slices'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::H264Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::H264Settings object:

  $service_obj->Method(Att1 => { AdaptiveQuantization => $value, ..., TimecodeInsertion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::H264Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdaptiveQuantization

=head1 DESCRIPTION

H264 Settings

=head1 ATTRIBUTES


=head2 AdaptiveQuantization => Str

  Adaptive quantization. Allows intra-frame quantizers to vary to improve
visual quality.


=head2 AfdSignaling => Str

  Indicates that AFD values will be written into the output stream. If
afdSignaling is "auto", the system will try to preserve the input AFD
value (in cases where multiple AFD values are valid). If set to
"fixed", the AFD value will be the value configured in the fixedAfd
parameter.


=head2 Bitrate => Int

  Average bitrate in bits/second. Required when the rate control mode is
VBR or CBR. Not used for QVBR. In an MS Smooth output group, each
output must have a unique value when its bitrate is rounded down to the
nearest multiple of 1000.


=head2 BufFillPct => Int

  Percentage of the buffer that should initially be filled (HRD buffer
model).


=head2 BufSize => Int

  Size of buffer (HRD buffer model) in bits.


=head2 ColorMetadata => Str

  Includes colorspace metadata in the output.


=head2 ColorSpaceSettings => MediaLive_H264ColorSpaceSettings

  Color Space settings


=head2 EntropyEncoding => Str

  Entropy encoding mode. Use cabac (must be in Main or High profile) or
cavlc.


=head2 FixedAfd => Str

  Four bit AFD value to write on all frames of video in the output
stream. Only valid when afdSignaling is set to 'Fixed'.


=head2 FlickerAq => Str

  If set to enabled, adjust quantization within each frame to reduce
flicker or 'pop' on I-frames.


=head2 FramerateControl => Str

  This field indicates how the output video frame rate is specified. If
"specified" is selected then the output video frame rate is determined
by framerateNumerator and framerateDenominator, else if
"initializeFromSource" is selected then the output video frame rate
will be set equal to the input video frame rate of the first input.


=head2 FramerateDenominator => Int

  Framerate denominator.


=head2 FramerateNumerator => Int

  Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 =
23.976 fps.


=head2 GopBReference => Str

  Documentation update needed


=head2 GopClosedCadence => Int

  Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 GopNumBFrames => Int

  Number of B-frames between reference frames.


=head2 GopSize => Num

  GOP size (keyframe interval) in units of either frames or seconds per
gopSizeUnits. Must be greater than zero.


=head2 GopSizeUnits => Str

  Indicates if the gopSize is specified in frames or seconds. If seconds
the system will convert the gopSize into a frame count at run time.


=head2 Level => Str

  H.264 Level.


=head2 LookAheadRateControl => Str

  Amount of lookahead. A value of low can decrease latency and memory
usage, while high can produce better quality for certain content.


=head2 MaxBitrate => Int

  For QVBR: See the tooltip for Quality level For VBR: Set the maximum
bitrate in order to accommodate expected spikes in the complexity of
the video.


=head2 MinIInterval => Int

  Only meaningful if sceneChangeDetect is set to enabled. Enforces
separation between repeated (cadence) I-frames and I-frames inserted by
Scene Change Detection. If a scene change I-frame is within I-interval
frames of a cadence I-frame, the GOP is shrunk and/or stretched to the
scene change I-frame. GOP stretch requires enabling lookahead as well
as setting I-interval. The normal cadence resumes for the next GOP.
Note: Maximum GOP stretch = GOP size + Min-I-interval - 1


=head2 NumRefFrames => Int

  Number of reference frames to use. The encoder may use more than
requested if using B-frames and/or interlaced encoding.


=head2 ParControl => Str

  This field indicates how the output pixel aspect ratio is specified. If
"specified" is selected then the output video pixel aspect ratio is
determined by parNumerator and parDenominator, else if
"initializeFromSource" is selected then the output pixsel aspect ratio
will be set equal to the input video pixel aspect ratio of the first
input.


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 Profile => Str

  H.264 Profile.


=head2 QvbrQualityLevel => Int

  Controls the target quality for the video encode. Applies only when the
rate control mode is QVBR. Set values for the QVBR quality level field
and Max bitrate field that suit your most important viewing devices.
Recommended values are: - Primary screen: Quality level: 8 to 10. Max
bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M -
Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M


=head2 RateControlMode => Str

  Rate control mode. QVBR: Quality will match the specified quality level
except when it is constrained by the maximum bitrate. Recommended if
you or your viewers pay for bandwidth. VBR: Quality and bitrate vary,
depending on the video complexity. Recommended instead of QVBR if you
want to maintain a specific average bitrate over the duration of the
channel. CBR: Quality varies, depending on the video complexity.
Recommended only if you distribute your assets to devices that cannot
handle variable bitrates.


=head2 ScanType => Str

  Sets the scan type of the output to progressive or top-field-first
interlaced.


=head2 SceneChangeDetect => Str

  Scene change detection. - On: inserts I-frames when scene change is
detected. - Off: does not force an I-frame when scene change is
detected.


=head2 Slices => Int

  Number of slices per picture. Must be less than or equal to the number
of macroblock rows for progressive pictures, and less than or equal to
half the number of macroblock rows for interlaced pictures. This field
is optional; when no value is specified the encoder will choose the
number of slices based on encode resolution.


=head2 Softness => Int

  Softness. Selects quantizer matrix, larger values reduce high-frequency
content in the encoded image.


=head2 SpatialAq => Str

  If set to enabled, adjust quantization within each frame based on
spatial variation of content complexity.


=head2 SubgopLength => Str

  If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to
dynamic, optimize the number of B-frames used for each sub-GOP to
improve visual quality.


=head2 Syntax => Str

  Produces a bitstream compliant with SMPTE RP-2027.


=head2 TemporalAq => Str

  If set to enabled, adjust quantization within each frame based on
temporal variation of content complexity.


=head2 TimecodeInsertion => Str

  Determines how timecodes should be inserted into the video elementary
stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass
through picture timing SEI messages from the source specified in
Timecode Config



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

