package Paws::MediaConvert::Mpeg2Settings;
  use Moose;
  has AdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'adaptiveQuantization', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has CodecLevel => (is => 'ro', isa => 'Str', request_name => 'codecLevel', traits => ['NameInRequest']);
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has DynamicSubGop => (is => 'ro', isa => 'Str', request_name => 'dynamicSubGop', traits => ['NameInRequest']);
  has FramerateControl => (is => 'ro', isa => 'Str', request_name => 'framerateControl', traits => ['NameInRequest']);
  has FramerateConversionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'framerateConversionAlgorithm', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
  has GopClosedCadence => (is => 'ro', isa => 'Int', request_name => 'gopClosedCadence', traits => ['NameInRequest']);
  has GopSize => (is => 'ro', isa => 'Num', request_name => 'gopSize', traits => ['NameInRequest']);
  has GopSizeUnits => (is => 'ro', isa => 'Str', request_name => 'gopSizeUnits', traits => ['NameInRequest']);
  has HrdBufferInitialFillPercentage => (is => 'ro', isa => 'Int', request_name => 'hrdBufferInitialFillPercentage', traits => ['NameInRequest']);
  has HrdBufferSize => (is => 'ro', isa => 'Int', request_name => 'hrdBufferSize', traits => ['NameInRequest']);
  has InterlaceMode => (is => 'ro', isa => 'Str', request_name => 'interlaceMode', traits => ['NameInRequest']);
  has IntraDcPrecision => (is => 'ro', isa => 'Str', request_name => 'intraDcPrecision', traits => ['NameInRequest']);
  has MaxBitrate => (is => 'ro', isa => 'Int', request_name => 'maxBitrate', traits => ['NameInRequest']);
  has MinIInterval => (is => 'ro', isa => 'Int', request_name => 'minIInterval', traits => ['NameInRequest']);
  has NumberBFramesBetweenReferenceFrames => (is => 'ro', isa => 'Int', request_name => 'numberBFramesBetweenReferenceFrames', traits => ['NameInRequest']);
  has ParControl => (is => 'ro', isa => 'Str', request_name => 'parControl', traits => ['NameInRequest']);
  has ParDenominator => (is => 'ro', isa => 'Int', request_name => 'parDenominator', traits => ['NameInRequest']);
  has ParNumerator => (is => 'ro', isa => 'Int', request_name => 'parNumerator', traits => ['NameInRequest']);
  has QualityTuningLevel => (is => 'ro', isa => 'Str', request_name => 'qualityTuningLevel', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has SceneChangeDetect => (is => 'ro', isa => 'Str', request_name => 'sceneChangeDetect', traits => ['NameInRequest']);
  has SlowPal => (is => 'ro', isa => 'Str', request_name => 'slowPal', traits => ['NameInRequest']);
  has Softness => (is => 'ro', isa => 'Int', request_name => 'softness', traits => ['NameInRequest']);
  has SpatialAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'spatialAdaptiveQuantization', traits => ['NameInRequest']);
  has Syntax => (is => 'ro', isa => 'Str', request_name => 'syntax', traits => ['NameInRequest']);
  has Telecine => (is => 'ro', isa => 'Str', request_name => 'telecine', traits => ['NameInRequest']);
  has TemporalAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'temporalAdaptiveQuantization', traits => ['NameInRequest']);
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

  


=head2 Bitrate => Int

  Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth
outputs, bitrates must be unique when rounded down to the nearest
multiple of 1000.


=head2 CodecLevel => Str

  


=head2 CodecProfile => Str

  


=head2 DynamicSubGop => Str

  Choose Adaptive to improve subjective video quality for high-motion
content. This will cause the service to use fewer B-frames (which infer
information based on other frames) for high-motion portions of the
video and more B-frames for low-motion portions. The maximum number of
B-frames is limited by the value you provide for the setting B frames
between reference frames (numberBFramesBetweenReferenceFrames).


=head2 FramerateControl => Str

  


=head2 FramerateConversionAlgorithm => Str

  


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

  


=head2 HrdBufferInitialFillPercentage => Int

  Percentage of the buffer that should initially be filled (HRD buffer
model).


=head2 HrdBufferSize => Int

  Size of buffer (HRD buffer model) in bits. For example, enter five
megabits as 5000000.


=head2 InterlaceMode => Str

  


=head2 IntraDcPrecision => Str

  


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

  


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 QualityTuningLevel => Str

  


=head2 RateControlMode => Str

  


=head2 SceneChangeDetect => Str

  


=head2 SlowPal => Str

  


=head2 Softness => Int

  Softness. Selects quantizer matrix, larger values reduce high-frequency
content in the encoded image.


=head2 SpatialAdaptiveQuantization => Str

  


=head2 Syntax => Str

  


=head2 Telecine => Str

  


=head2 TemporalAdaptiveQuantization => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

