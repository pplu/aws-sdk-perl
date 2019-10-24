# Generated from default/object.tt
package Paws::Rekognition::CompareFacesMatch;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::Rekognition::Types qw/Rekognition_ComparedFace/;
  has Face => (is => 'ro', isa => Rekognition_ComparedFace);
  has Similarity => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Similarity' => {
                                 'type' => 'Num'
                               },
               'Face' => {
                           'class' => 'Paws::Rekognition::ComparedFace',
                           'type' => 'Rekognition_ComparedFace'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CompareFacesMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::CompareFacesMatch object:

  $service_obj->Method(Att1 => { Face => $value, ..., Similarity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::CompareFacesMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Provides information about a face in a target image that matches the
source image face analyzed by C<CompareFaces>. The C<Face> property
contains the bounding box of the face in the target image. The
C<Similarity> property is the confidence that the source image face
matches the face in the bounding box.

=head1 ATTRIBUTES


=head2 Face => Rekognition_ComparedFace

  Provides face metadata (bounding box and confidence that the bounding
box actually contains a face).


=head2 Similarity => Num

  Level of confidence that the faces match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

