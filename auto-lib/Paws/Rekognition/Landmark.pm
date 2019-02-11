package Paws::Rekognition::Landmark;
  use Moose;
  has Type => (is => 'ro', isa => 'Str');
  has X => (is => 'ro', isa => 'Num');
  has Y => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Landmark

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Landmark object:

  $service_obj->Method(Att1 => { Type => $value, ..., Y => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Landmark object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Indicates the location of the landmark on the face.

=head1 ATTRIBUTES


=head2 Type => Str

  Type of landmark.


=head2 X => Num

  The x-coordinate from the top left of the landmark expressed as the
ratio of the width of the image. For example, if the image is 700 x 200
and the x-coordinate of the landmark is at 350 pixels, this value is
0.5.


=head2 Y => Num

  The y-coordinate from the top left of the landmark expressed as the
ratio of the height of the image. For example, if the image is 700 x
200 and the y-coordinate of the landmark is at 100 pixels, this value
is 0.5.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

