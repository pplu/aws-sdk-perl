# Generated from default/object.tt
package Paws::Textract::Geometry;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Textract::Types qw/Textract_Point Textract_BoundingBox/;
  has BoundingBox => (is => 'ro', isa => Textract_BoundingBox);
  has Polygon => (is => 'ro', isa => ArrayRef[Textract_Point]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Polygon' => {
                              'class' => 'Paws::Textract::Point',
                              'type' => 'ArrayRef[Textract_Point]'
                            },
               'BoundingBox' => {
                                  'class' => 'Paws::Textract::BoundingBox',
                                  'type' => 'Textract_BoundingBox'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::Geometry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::Geometry object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Polygon => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::Geometry object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Information about where a recognized text, key, value, table, or table
cell is located on a document page.

=head1 ATTRIBUTES


=head2 BoundingBox => Textract_BoundingBox

  An axis-aligned coarse representation of the location of the recognized
text on the document page.


=head2 Polygon => ArrayRef[Textract_Point]

  Within the bounding box, a fine-grained polygon around the recognized
text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

