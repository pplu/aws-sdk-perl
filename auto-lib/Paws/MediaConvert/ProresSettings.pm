package Paws::MediaConvert::ProresSettings;
  use Moose;
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has FramerateControl => (is => 'ro', isa => 'Str', request_name => 'framerateControl', traits => ['NameInRequest']);
  has FramerateConversionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'framerateConversionAlgorithm', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
  has InterlaceMode => (is => 'ro', isa => 'Str', request_name => 'interlaceMode', traits => ['NameInRequest']);
  has ParControl => (is => 'ro', isa => 'Str', request_name => 'parControl', traits => ['NameInRequest']);
  has ParDenominator => (is => 'ro', isa => 'Int', request_name => 'parDenominator', traits => ['NameInRequest']);
  has ParNumerator => (is => 'ro', isa => 'Int', request_name => 'parNumerator', traits => ['NameInRequest']);
  has SlowPal => (is => 'ro', isa => 'Str', request_name => 'slowPal', traits => ['NameInRequest']);
  has Telecine => (is => 'ro', isa => 'Str', request_name => 'telecine', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ProresSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ProresSettings object:

  $service_obj->Method(Att1 => { CodecProfile => $value, ..., Telecine => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ProresSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CodecProfile

=head1 DESCRIPTION

Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value PRORES.

=head1 ATTRIBUTES


=head2 CodecProfile => Str

  Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes
codec to use for this output.


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

  When you use the API for transcode jobs that use frame rate conversion,
specify the frame rate as a fraction. For example, 24000 / 1001 =
23.976 fps. Use FramerateNumerator to specify the numerator of this
fraction. In this example, use 24000 for the value of
FramerateNumerator.


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


=head2 ParControl => Str

  Use (ProresParControl) to specify how the service determines the pixel
aspect ratio. Set to Follow source (INITIALIZE_FROM_SOURCE) to use the
pixel aspect ratio from the input. To specify a different pixel aspect
ratio: Using the console, choose it from the dropdown menu. Using the
API, set ProresParControl to (SPECIFIED) and provide for (ParNumerator)
and (ParDenominator).


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 SlowPal => Str

  Enables Slow PAL rate conversion. 23.976fps and 24fps input is
relabeled as 25fps, and audio is sped up correspondingly.


=head2 Telecine => Str

  Only use Telecine (ProresTelecine) when you set Framerate (Framerate)
to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a
29.97i output from a 23.976 input. Set it to Soft (soft) to produce
23.976 output and leave converstion to the player.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

