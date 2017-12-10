package Paws::Rekognition::CelebrityDetail;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
  has Face => (is => 'ro', isa => 'Paws::Rekognition::FaceDetail');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Urls => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CelebrityDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::CelebrityDetail object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Urls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::CelebrityDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Information about a recognized celebrity.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  Bounding box around the body of a celebrity.


=head2 Confidence => Num

  The confidence, in percentage, that Amazon Rekognition has that the
recognized face is the celebrity.


=head2 Face => L<Paws::Rekognition::FaceDetail>

  Face details for the recognized celebrity.


=head2 Id => Str

  The unique identifier for the celebrity.


=head2 Name => Str

  The name of the celebrity.


=head2 Urls => ArrayRef[Str|Undef]

  An array of URLs pointing to additional celebrity information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

