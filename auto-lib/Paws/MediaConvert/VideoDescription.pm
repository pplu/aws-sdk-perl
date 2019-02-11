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

  


=head2 AntiAlias => Str

  


=head2 CodecSettings => L<Paws::MediaConvert::VideoCodecSettings>

  


=head2 ColorMetadata => Str

  


=head2 Crop => L<Paws::MediaConvert::Rectangle>

  Applies only if your input aspect ratio is different from your output
aspect ratio. Use Input cropping rectangle (Crop) to specify the video
area the service will include in the output. This will crop the input
source, causing video pixels to be removed on encode. If you crop your
input frame size to smaller than your output frame size, make sure to
specify the behavior you want in your output setting "Scaling
behavior".


=head2 DropFrameTimecode => Str

  


=head2 FixedAfd => Int

  Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED).
Use Fixed (FixedAfd) to specify a four-bit AFD value which the service
will write on all frames of this video output.


=head2 Height => Int

  Use the Height (Height) setting to define the video resolution height
for this output. Specify in pixels. If you don't provide a value here,
the service will use the input height.


=head2 Position => L<Paws::MediaConvert::Rectangle>

  Use Position (Position) to point to a rectangle object to define your
position. This setting overrides any other aspect ratio.


=head2 RespondToAfd => Str

  


=head2 ScalingBehavior => Str

  


=head2 Sharpness => Int

  Use Sharpness (Sharpness)setting to specify the strength of
anti-aliasing. This setting changes the width of the anti-alias filter
kernel used for scaling. Sharpness only applies if your output
resolution is different from your input resolution, and if you set
Anti-alias (AntiAlias) to ENABLED. 0 is the softest setting, 100 the
sharpest, and 50 recommended for most content.


=head2 TimecodeInsertion => Str

  


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

