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

  Output video height (in pixels). Leave blank to use source video
height. If left blank, width must also be unspecified.


=head2 B<REQUIRED> Name => Str

  The name of this VideoDescription. Outputs will use this name to
uniquely identify this Description. Description names should be unique
within this Live Event.


=head2 RespondToAfd => Str

  Indicates how to respond to the AFD values in the input stream. Setting
to "respond" causes input video to be clipped, depending on AFD value,
input display aspect ratio and output display aspect ratio.


=head2 ScalingBehavior => Str

  When set to "stretchToOutput", automatically configures the output
position to stretch the video to the specified output resolution. This
option will override any position value.


=head2 Sharpness => Int

  Changes the width of the anti-alias filter kernel used for scaling.
Only applies if scaling is being performed and antiAlias is set to
true. 0 is the softest setting, 100 the sharpest, and 50 recommended
for most content.


=head2 Width => Int

  Output video width (in pixels). Leave out to use source video width. If
left out, height must also be left out. Display aspect ratio is always
preserved by letterboxing or pillarboxing when necessary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

