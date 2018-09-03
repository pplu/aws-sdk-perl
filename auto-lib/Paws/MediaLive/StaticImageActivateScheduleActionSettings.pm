package Paws::MediaLive::StaticImageActivateScheduleActionSettings;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has FadeIn => (is => 'ro', isa => 'Int', request_name => 'fadeIn', traits => ['NameInRequest']);
  has FadeOut => (is => 'ro', isa => 'Int', request_name => 'fadeOut', traits => ['NameInRequest']);
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'image', traits => ['NameInRequest'], required => 1);
  has ImageX => (is => 'ro', isa => 'Int', request_name => 'imageX', traits => ['NameInRequest']);
  has ImageY => (is => 'ro', isa => 'Int', request_name => 'imageY', traits => ['NameInRequest']);
  has Layer => (is => 'ro', isa => 'Int', request_name => 'layer', traits => ['NameInRequest']);
  has Opacity => (is => 'ro', isa => 'Int', request_name => 'opacity', traits => ['NameInRequest']);
  has Width => (is => 'ro', isa => 'Int', request_name => 'width', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StaticImageActivateScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::StaticImageActivateScheduleActionSettings object:

  $service_obj->Method(Att1 => { Duration => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::StaticImageActivateScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Static image activate.

=head1 ATTRIBUTES


=head2 Duration => Int

  The duration in milliseconds for the image to remain in the video. If
omitted or set to 0, duration is infinite and image will remain until
explicitly deactivated.


=head2 FadeIn => Int

  The time in milliseconds for the image to fade in. Defaults to 0.


=head2 FadeOut => Int

  The time in milliseconds for the image to fade out. Defaults to 0.


=head2 Height => Int

  The height of the image when inserted into the video. Defaults to the
native height of the image.


=head2 B<REQUIRED> Image => L<Paws::MediaLive::InputLocation>

  The image to overlay on the video. Must be a 32 bit BMP, PNG, or TGA
file. Must not be larger than the input video.


=head2 ImageX => Int

  Placement of the left edge of the image on the horizontal axis in
pixels. 0 is the left edge of the frame. Defaults to 0.


=head2 ImageY => Int

  Placement of the top edge of the image on the vertical axis in pixels.
0 is the top edge of the frame. Defaults to 0.


=head2 Layer => Int

  The Z order of the inserted image. Images with higher layer values will
be inserted on top of images with lower layer values. Permitted values
are 0-7 inclusive. Defaults to 0.


=head2 Opacity => Int

  Opacity of image where 0 is transparent and 100 is fully opaque.
Defaults to 100.


=head2 Width => Int

  The width of the image when inserted into the video. Defaults to the
native width of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

