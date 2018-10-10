package Paws::Rekognition::FaceRecord;
  use Moose;
  has Face => (is => 'ro', isa => 'Paws::Rekognition::Face');
  has FaceDetail => (is => 'ro', isa => 'Paws::Rekognition::FaceDetail');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::FaceRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::FaceRecord object:

  $service_obj->Method(Att1 => { Face => $value, ..., FaceDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::FaceRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Object containing both the face metadata (stored in the backend
database), and facial attributes that are detected but aren't stored in
the database.

=head1 ATTRIBUTES


=head2 Face => L<Paws::Rekognition::Face>

  Describes the face properties such as the bounding box, face ID, image
ID of the input image, and external image ID that you assigned.


=head2 FaceDetail => L<Paws::Rekognition::FaceDetail>

  Structure containing attributes of the face that the algorithm
detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

