package Paws::MediaConvert::MotionImageInsertionFramerate;
  use Moose;
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MotionImageInsertionFramerate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MotionImageInsertionFramerate object:

  $service_obj->Method(Att1 => { FramerateDenominator => $value, ..., FramerateNumerator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MotionImageInsertionFramerate object:

  $result = $service_obj->Method(...);
  $result->Att1->FramerateDenominator

=head1 DESCRIPTION

For motion overlays that don't have a built-in frame rate, specify the
frame rate of the overlay in frames per second, as a fraction. For
example, specify 24 fps as 24/1. The overlay frame rate doesn't need to
match the frame rate of the underlying video.

=head1 ATTRIBUTES


=head2 FramerateDenominator => Int

  The bottom of the fraction that expresses your overlay frame rate. For
example, if your frame rate is 24 fps, set this value to 1.


=head2 FramerateNumerator => Int

  The top of the fraction that expresses your overlay frame rate. For
example, if your frame rate is 24 fps, set this value to 24.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

