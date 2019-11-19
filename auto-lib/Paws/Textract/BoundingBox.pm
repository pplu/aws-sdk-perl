# Generated from default/object.tt
package Paws::Textract::BoundingBox;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::Textract::Types qw//;
  has Height => (is => 'ro', isa => Num);
  has Left => (is => 'ro', isa => Num);
  has Top => (is => 'ro', isa => Num);
  has Width => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Height' => {
                             'type' => 'Num'
                           },
               'Top' => {
                          'type' => 'Num'
                        },
               'Width' => {
                            'type' => 'Num'
                          },
               'Left' => {
                           'type' => 'Num'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::BoundingBox

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::BoundingBox object:

  $service_obj->Method(Att1 => { Height => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::BoundingBox object:

  $result = $service_obj->Method(...);
  $result->Att1->Height

=head1 DESCRIPTION

The bounding box around the recognized text, key, value, table or table
cell on a document page. The C<left> (x-coordinate) and C<top>
(y-coordinate) are coordinates that represent the top and left sides of
the bounding box. Note that the upper-left corner of the image is the
origin (0,0).

The C<top> and C<left> values returned are ratios of the overall
document page size. For example, if the input image is 700 x 200
pixels, and the top-left coordinate of the bounding box is 350 x 50
pixels, the API returns a C<left> value of 0.5 (350/700) and a C<top>
value of 0.25 (50/200).

The C<width> and C<height> values represent the dimensions of the
bounding box as a ratio of the overall document page dimension. For
example, if the document page size is 700 x 200 pixels, and the
bounding box width is 70 pixels, the width returned is 0.1.

=head1 ATTRIBUTES


=head2 Height => Num

  The height of the bounding box as a ratio of the overall document page
height.


=head2 Left => Num

  The left coordinate of the bounding box as a ratio of overall document
page width.


=head2 Top => Num

  The top coordinate of the bounding box as a ratio of overall document
page height.


=head2 Width => Num

  The width of the bounding box as a ratio of the overall document page
width.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

