package Paws::Rekognition::ComparedSourceImageFace;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ComparedSourceImageFace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ComparedSourceImageFace object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Confidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ComparedSourceImageFace object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Type that describes the face Amazon Rekognition chose to compare with
the faces in the target. This contains a bounding box for the selected
face and confidence level that the bounding box contains a face. Note
that Amazon Rekognition selects the largest face in the source image
for this comparison.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  Bounding box of the face.


=head2 Confidence => Num

  Confidence level that the selected bounding box contains a face.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

