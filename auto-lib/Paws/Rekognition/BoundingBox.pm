package Paws::Rekognition::BoundingBox;
  use Moose;
  has Height => (is => 'ro', isa => 'Num');
  has Left => (is => 'ro', isa => 'Num');
  has Top => (is => 'ro', isa => 'Num');
  has Width => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::BoundingBox

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::BoundingBox object:

  $service_obj->Method(Att1 => { Height => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::BoundingBox object:

  $result = $service_obj->Method(...);
  $result->Att1->Height

=head1 DESCRIPTION

Identifies the bounding box around the label, face, or text. The
C<left> (x-coordinate) and C<top> (y-coordinate) are coordinates
representing the top and left sides of the bounding box. Note that the
upper-left corner of the image is the origin (0,0).

The C<top> and C<left> values returned are ratios of the overall image
size. For example, if the input image is 700x200 pixels, and the
top-left coordinate of the bounding box is 350x50 pixels, the API
returns a C<left> value of 0.5 (350/700) and a C<top> value of 0.25
(50/200).

The C<width> and C<height> values represent the dimensions of the
bounding box as a ratio of the overall image dimension. For example, if
the input image is 700x200 pixels, and the bounding box width is 70
pixels, the width returned is 0.1.

The bounding box coordinates can have negative values. For example, if
Amazon Rekognition is able to detect a face that is at the image edge
and is only partially visible, the service can return coordinates that
are outside the image bounds and, depending on the image edge, you
might get negative values or values greater than 1 for the C<left> or
C<top> values.

=head1 ATTRIBUTES


=head2 Height => Num

  Height of the bounding box as a ratio of the overall image height.


=head2 Left => Num

  Left coordinate of the bounding box as a ratio of overall image width.


=head2 Top => Num

  Top coordinate of the bounding box as a ratio of overall image height.


=head2 Width => Num

  Width of the bounding box as a ratio of the overall image width.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

