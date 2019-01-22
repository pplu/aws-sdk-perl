package Paws::Rekognition::Celebrity;
  use Moose;
  has Face => (is => 'ro', isa => 'Paws::Rekognition::ComparedFace');
  has Id => (is => 'ro', isa => 'Str');
  has MatchConfidence => (is => 'ro', isa => 'Num');
  has Name => (is => 'ro', isa => 'Str');
  has Urls => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Celebrity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Celebrity object:

  $service_obj->Method(Att1 => { Face => $value, ..., Urls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Celebrity object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Provides information about a celebrity recognized by the
RecognizeCelebrities operation.

=head1 ATTRIBUTES


=head2 Face => L<Paws::Rekognition::ComparedFace>

  Provides information about the celebrity's face, such as its location
on the image.


=head2 Id => Str

  A unique identifier for the celebrity.


=head2 MatchConfidence => Num

  The confidence, in percentage, that Amazon Rekognition has that the
recognized face is the celebrity.


=head2 Name => Str

  The name of the celebrity.


=head2 Urls => ArrayRef[Str|Undef]

  An array of URLs pointing to additional information about the
celebrity. If there is no additional information about the celebrity,
this list is empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

