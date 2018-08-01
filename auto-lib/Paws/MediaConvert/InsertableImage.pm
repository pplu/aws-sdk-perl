package Paws::MediaConvert::InsertableImage;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has FadeIn => (is => 'ro', isa => 'Int', request_name => 'fadeIn', traits => ['NameInRequest']);
  has FadeOut => (is => 'ro', isa => 'Int', request_name => 'fadeOut', traits => ['NameInRequest']);
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has ImageInserterInput => (is => 'ro', isa => 'Str', request_name => 'imageInserterInput', traits => ['NameInRequest'], required => 1);
  has ImageX => (is => 'ro', isa => 'Int', request_name => 'imageX', traits => ['NameInRequest'], required => 1);
  has ImageY => (is => 'ro', isa => 'Int', request_name => 'imageY', traits => ['NameInRequest'], required => 1);
  has Layer => (is => 'ro', isa => 'Int', request_name => 'layer', traits => ['NameInRequest'], required => 1);
  has Opacity => (is => 'ro', isa => 'Int', request_name => 'opacity', traits => ['NameInRequest'], required => 1);
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

Settings for Insertable Image

=head1 ATTRIBUTES


=head2 Duration => Int

  Use Duration (Duration) to set the time, in milliseconds, for the image
to remain on the output video.


=head2 FadeIn => Int

  Use Fade in (FadeIut) to set the length, in milliseconds, of the
inserted image fade in. If you don't specify a value for Fade in, the
image will appear abruptly at the Start time.


=head2 FadeOut => Int

  Use Fade out (FadeOut) to set the length, in milliseconds, of the
inserted image fade out. If you don't specify a value for Fade out, the
image will disappear abruptly at the end of the inserted image
duration.


=head2 Height => Int

  Specify the Height (Height) of the inserted image. Use a value that is
less than or equal to the video resolution height. Leave this setting
blank to use the native height of the image.


=head2 B<REQUIRED> ImageInserterInput => Str

  Use Image location (imageInserterInput) to specify the Amazon S3
location of the image to be inserted into the output. Use a 32 bit BMP,
PNG, or TGA file that fits inside the video frame.


=head2 B<REQUIRED> ImageX => Int

  Use Left (ImageX) to set the distance, in pixels, between the inserted
image and the left edge of the frame. Required for BMP, PNG and TGA
input.


=head2 B<REQUIRED> ImageY => Int

  Use Top (ImageY) to set the distance, in pixels, between the inserted
image and the top edge of the video frame. Required for BMP, PNG and
TGA input.


=head2 B<REQUIRED> Layer => Int

  Use Layer (Layer) to specify how overlapping inserted images appear.
Images with higher values of layer appear on top of images with lower
values of layer.


=head2 B<REQUIRED> Opacity => Int

  Use Opacity (Opacity) to specify how much of the underlying video shows
through the inserted image. 0 is transparent and 100 is fully opaque.
Default is 50.


=head2 StartTime => Str

  Use Start time (StartTime) to specify the video timecode when the image
is inserted in the output. This must be in timecode (HH:MM:SS:FF or
HH:MM:SS;FF) format.


=head2 Width => Int

  Specify the Width (Width) of the inserted image. Use a value that is
less than or equal to the video resolution width. Leave this setting
blank to use the native width of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

