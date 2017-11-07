package Paws::Rekognition::FaceMatch;
  use Moose;
  has Face => (is => 'ro', isa => 'Paws::Rekognition::Face');
  has Similarity => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::FaceMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::FaceMatch object:

  $service_obj->Method(Att1 => { Face => $value, ..., Similarity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::FaceMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Provides face metadata. In addition, it also provides the confidence in
the match of this face with the input face.

=head1 ATTRIBUTES


=head2 Face => L<Paws::Rekognition::Face>

  Describes the face properties such as the bounding box, face ID, image
ID of the source image, and external image ID that you assigned.


=head2 Similarity => Num

  Confidence in the match of this face with the input face.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

