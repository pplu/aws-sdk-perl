# Generated from default/object.tt
package Paws::Rekognition::Geometry;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_Point Rekognition_BoundingBox/;
  has BoundingBox => (is => 'ro', isa => Rekognition_BoundingBox);
  has Polygon => (is => 'ro', isa => ArrayRef[Rekognition_Point]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BoundingBox' => {
                                  'type' => 'Rekognition_BoundingBox',
                                  'class' => 'Paws::Rekognition::BoundingBox'
                                },
               'Polygon' => {
                              'type' => 'ArrayRef[Rekognition_Point]',
                              'class' => 'Paws::Rekognition::Point'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Geometry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Geometry object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Polygon => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Geometry object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Information about where the text detected by DetectText is located on
an image.

=head1 ATTRIBUTES


=head2 BoundingBox => Rekognition_BoundingBox

  An axis-aligned coarse representation of the detected text's location
on the image.


=head2 Polygon => ArrayRef[Rekognition_Point]

  Within the bounding box, a fine-grained polygon around the detected
text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

