package Paws::MediaConvert::InsertableImage;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has FadeIn => (is => 'ro', isa => 'Int', request_name => 'fadeIn', traits => ['NameInRequest']);
  has FadeOut => (is => 'ro', isa => 'Int', request_name => 'fadeOut', traits => ['NameInRequest']);
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has ImageInserterInput => (is => 'ro', isa => 'Str', request_name => 'imageInserterInput', traits => ['NameInRequest']);
  has ImageX => (is => 'ro', isa => 'Int', request_name => 'imageX', traits => ['NameInRequest']);
  has ImageY => (is => 'ro', isa => 'Int', request_name => 'imageY', traits => ['NameInRequest']);
  has Layer => (is => 'ro', isa => 'Int', request_name => 'layer', traits => ['NameInRequest']);
  has Opacity => (is => 'ro', isa => 'Int', request_name => 'opacity', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Width => (is => 'ro', isa => 'Int', request_name => 'width', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::InsertableImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::InsertableImage object:

  $service_obj->Method(Att1 => { Duration => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::InsertableImage object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Settings that specify how your still graphic overlay appears.

=head1 ATTRIBUTES


=head2 Duration => Int

  Specify the time, in milliseconds, for the image to remain on the
output video. This duration includes fade-in time but not fade-out
time.


=head2 FadeIn => Int

  Specify the length of time, in milliseconds, between the Start time
that you specify for the image insertion and the time that the image
appears at full opacity. Full opacity is the level that you specify for
the opacity setting. If you don't specify a value for Fade-in, the
image will appear abruptly at the overlay start time.


=head2 FadeOut => Int

  Specify the length of time, in milliseconds, between the end of the
time that you have specified for the image overlay Duration and when
the overlaid image has faded to total transparency. If you don't
specify a value for Fade-out, the image will disappear abruptly at the
end of the inserted image duration.


=head2 Height => Int

  Specify the height of the inserted image in pixels. If you specify a
value that's larger than the video resolution height, the service will
crop your overlaid image to fit. To use the native height of the image,
keep this setting blank.


=head2 ImageInserterInput => Str

  Specify the Amazon S3 location of the image that you want to overlay on
the video. Use a PNG or TGA file.


=head2 ImageX => Int

  Specify the distance, in pixels, between the inserted image and the
left edge of the video frame. Required for any image overlay that you
specify.


=head2 ImageY => Int

  Specify the distance, in pixels, between the overlaid image and the top
edge of the video frame. Required for any image overlay that you
specify.


=head2 Layer => Int

  Specify how overlapping inserted images appear. Images with higher
values for Layer appear on top of images with lower values for Layer.


=head2 Opacity => Int

  Use Opacity (Opacity) to specify how much of the underlying video shows
through the inserted image. 0 is transparent and 100 is fully opaque.
Default is 50.


=head2 StartTime => Str

  Specify the timecode of the frame that you want the overlay to first
appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF)
format. Remember to take into account your timecode source settings.


=head2 Width => Int

  Specify the width of the inserted image in pixels. If you specify a
value that's larger than the video resolution width, the service will
crop your overlaid image to fit. To use the native width of the image,
keep this setting blank.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

