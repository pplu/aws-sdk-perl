# Generated by default/object.tt
package Paws::MediaConvert::Xavc4kProfileSettings;
  use Moose;
  has BitrateClass => (is => 'ro', isa => 'Str', request_name => 'bitrateClass', traits => ['NameInRequest']);
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has FlickerAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'flickerAdaptiveQuantization', traits => ['NameInRequest']);
  has GopBReference => (is => 'ro', isa => 'Str', request_name => 'gopBReference', traits => ['NameInRequest']);
  has GopClosedCadence => (is => 'ro', isa => 'Int', request_name => 'gopClosedCadence', traits => ['NameInRequest']);
  has HrdBufferSize => (is => 'ro', isa => 'Int', request_name => 'hrdBufferSize', traits => ['NameInRequest']);
  has QualityTuningLevel => (is => 'ro', isa => 'Str', request_name => 'qualityTuningLevel', traits => ['NameInRequest']);
  has Slices => (is => 'ro', isa => 'Int', request_name => 'slices', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Xavc4kProfileSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Xavc4kProfileSettings object:

  $service_obj->Method(Att1 => { BitrateClass => $value, ..., Slices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Xavc4kProfileSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BitrateClass

=head1 DESCRIPTION

Required when you set (Profile) under
(VideoDescription)E<gt>(CodecSettings)E<gt>(XavcSettings) to the value
XAVC_4K.

=head1 ATTRIBUTES


=head2 BitrateClass => Str

Specify the XAVC 4k (Long GOP) Bitrate Class to set the bitrate of your
output. Outputs of the same class have similar image quality over the
operating points that are valid for that class.


=head2 CodecProfile => Str

Specify the codec profile for this output. Choose High, 8-bit, 4:2:0
(HIGH) or High, 10-bit, 4:2:2 (HIGH_422). These profiles are specified
in ITU-T H.264.


=head2 FlickerAdaptiveQuantization => Str

The best way to set up adaptive quantization is to keep the default
value, Auto (AUTO), for the setting Adaptive quantization
(XavcAdaptiveQuantization). When you do so, MediaConvert automatically
applies the best types of quantization for your video content. Include
this setting in your JSON job specification only when you choose to
change the default value for Adaptive quantization. Enable this setting
to have the encoder reduce I-frame pop. I-frame pop appears as a visual
flicker that can arise when the encoder saves bits by copying some
macroblocks many times from frame to frame, and then refreshes them at
the I-frame. When you enable this setting, the encoder updates these
macroblocks slightly more often to smooth out the flicker. This setting
is disabled by default. Related setting: In addition to enabling this
setting, you must also set Adaptive quantization (adaptiveQuantization)
to a value other than Off (OFF) or Auto (AUTO). Use Adaptive
quantization to adjust the degree of smoothing that Flicker adaptive
quantization provides.


=head2 GopBReference => Str

Specify whether the encoder uses B-frames as reference frames for other
pictures in the same GOP. Choose Allow (ENABLED) to allow the encoder
to use B-frames as reference frames. Choose Don't allow (DISABLED) to
prevent the encoder from using B-frames as reference frames.


=head2 GopClosedCadence => Int

Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 HrdBufferSize => Int

Specify the size of the buffer that MediaConvert uses in the HRD buffer
model for this output. Specify this value in bits; for example, enter
five megabits as 5000000. When you don't set this value, or you set it
to zero, MediaConvert calculates the default by doubling the bitrate of
this output point.


=head2 QualityTuningLevel => Str

Optional. Use Quality tuning level (qualityTuningLevel) to choose how
you want to trade off encoding speed for output video quality. The
default behavior is faster, lower quality, single-pass encoding.


=head2 Slices => Int

Number of slices per picture. Must be less than or equal to the number
of macroblock rows for progressive pictures, and less than or equal to
half the number of macroblock rows for interlaced pictures.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

