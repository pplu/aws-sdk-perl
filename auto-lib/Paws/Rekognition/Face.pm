package Paws::Rekognition::Face;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
  has ExternalImageId => (is => 'ro', isa => 'Str');
  has FaceId => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Face

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Face object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., ImageId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Face object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Describes the face properties such as the bounding box, face ID, image
ID of the input image, and external image ID that you assigned.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  Bounding box of the face.


=head2 Confidence => Num

  Confidence level that the bounding box contains a face (and not a
different object such as a tree).


=head2 ExternalImageId => Str

  Identifier that you assign to all the faces in the input image.


=head2 FaceId => Str

  Unique identifier that Amazon Rekognition assigns to the face.


=head2 ImageId => Str

  Unique identifier that Amazon Rekognition assigns to the input image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

