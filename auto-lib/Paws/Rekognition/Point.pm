package Paws::Rekognition::Point;
  use Moose;
  has X => (is => 'ro', isa => 'Num');
  has Y => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Point

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Point object:

  $service_obj->Method(Att1 => { X => $value, ..., Y => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Point object:

  $result = $service_obj->Method(...);
  $result->Att1->X

=head1 DESCRIPTION

The X and Y coordinates of a point on an image. The X and Y values
returned are ratios of the overall image size. For example, if the
input image is 700x200 and the operation returns X=0.5 and Y=0.25, then
the point is at the (350,50) pixel coordinate on the image.

An array of C<Point> objects, C<Polygon>, is returned by DetectText.
C<Polygon> represents a fine-grained polygon around detected text. For
more information, see Geometry in the Amazon Rekognition Developer
Guide.

=head1 ATTRIBUTES


=head2 X => Num

  The value of the X coordinate for a point on a C<Polygon>.


=head2 Y => Num

  The value of the Y coordinate for a point on a C<Polygon>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

