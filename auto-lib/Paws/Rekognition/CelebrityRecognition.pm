package Paws::Rekognition::CelebrityRecognition;
  use Moose;
  has Celebrity => (is => 'ro', isa => 'Paws::Rekognition::CelebrityDetail');
  has Timestamp => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CelebrityRecognition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::CelebrityRecognition object:

  $service_obj->Method(Att1 => { Celebrity => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::CelebrityRecognition object:

  $result = $service_obj->Method(...);
  $result->Att1->Celebrity

=head1 DESCRIPTION

Information about a detected celebrity and the time the celebrity was
detected in a stored video. For more information, see
GetCelebrityRecognition in the Amazon Rekognition Developer Guide.

=head1 ATTRIBUTES


=head2 Celebrity => L<Paws::Rekognition::CelebrityDetail>

  Information about a recognized celebrity.


=head2 Timestamp => Int

  The time, in milliseconds from the start of the video, that the
celebrity was recognized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

