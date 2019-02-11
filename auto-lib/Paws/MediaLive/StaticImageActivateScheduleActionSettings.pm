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

Settings for the action to activate a static image.

=head1 ATTRIBUTES


=head2 Duration => Int

  The duration in milliseconds for the image to remain on the video. If
omitted or set to 0 the duration is unlimited and the image will remain
until it is explicitly deactivated.


=head2 FadeIn => Int

  The time in milliseconds for the image to fade in. The fade-in starts
at the start time of the overlay. Default is 0 (no fade-in).


=head2 FadeOut => Int

  Applies only if a duration is specified. The time in milliseconds for
the image to fade out. The fade-out starts when the duration time is
hit, so it effectively extends the duration. Default is 0 (no
fade-out).


=head2 Height => Int

  The height of the image when inserted into the video, in pixels. The
overlay will be scaled up or down to the specified height. Leave blank
to use the native height of the overlay.


=head2 B<REQUIRED> Image => L<Paws::MediaLive::InputLocation>

  The location and filename of the image file to overlay on the video.
The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger
(in pixels) than the input video.


=head2 ImageX => Int

  Placement of the left edge of the overlay relative to the left edge of
the video frame, in pixels. 0 (the default) is the left edge of the
frame. If the placement causes the overlay to extend beyond the right
edge of the underlying video, then the overlay is cropped on the right.


=head2 ImageY => Int

  Placement of the top edge of the overlay relative to the top edge of
the video frame, in pixels. 0 (the default) is the top edge of the
frame. If the placement causes the overlay to extend beyond the bottom
edge of the underlying video, then the overlay is cropped on the
bottom.


=head2 Layer => Int

  The number of the layer, 0 to 7. There are 8 layers that can be
overlaid on the video, each layer with a different image. The layers
are in Z order, which means that overlays with higher values of layer
are inserted on top of overlays with lower values of layer. Default is
0.


=head2 Opacity => Int

  Opacity of image where 0 is transparent and 100 is fully opaque.
Default is 100.


=head2 Width => Int

  The width of the image when inserted into the video, in pixels. The
overlay will be scaled up or down to the specified width. Leave blank
to use the native width of the overlay.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

