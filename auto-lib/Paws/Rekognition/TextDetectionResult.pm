package Paws::Rekognition::TextDetectionResult;
  use Moose;
  has TextDetection => (is => 'ro', isa => 'Paws::Rekognition::TextDetection');
  has Timestamp => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TextDetectionResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::TextDetectionResult object:

  $service_obj->Method(Att1 => { TextDetection => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::TextDetectionResult object:

  $result = $service_obj->Method(...);
  $result->Att1->TextDetection

=head1 DESCRIPTION

Information about text detected in a video. Incudes the detected text,
the time in milliseconds from the start of the video that the text was
detected, and where it was detected on the screen.

=head1 ATTRIBUTES


=head2 TextDetection => L<Paws::Rekognition::TextDetection>

  Details about text detected in a video.


=head2 Timestamp => Int

  The time, in milliseconds from the start of the video, that the text
was detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

