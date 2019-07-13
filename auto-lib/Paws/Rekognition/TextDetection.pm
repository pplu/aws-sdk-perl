package Paws::Rekognition::TextDetection;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has DetectedText => (is => 'ro', isa => 'Str');
  has Geometry => (is => 'ro', isa => 'Paws::Rekognition::Geometry');
  has Id => (is => 'ro', isa => 'Int');
  has ParentId => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TextDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::TextDetection object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::TextDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

Information about a word or line of text detected by DetectText.

The C<DetectedText> field contains the text that Amazon Rekognition
detected in the image.

Every word and line has an identifier (C<Id>). Each word belongs to a
line and has a parent identifier (C<ParentId>) that identifies the line
of text in which the word appears. The word C<Id> is also an index for
the word within a line of words.

For more information, see Detecting Text in the Amazon Rekognition
Developer Guide.

=head1 ATTRIBUTES


=head2 Confidence => Num

  The confidence that Amazon Rekognition has in the accuracy of the
detected text and the accuracy of the geometry points around the
detected text.


=head2 DetectedText => Str

  The word or line of text recognized by Amazon Rekognition.


=head2 Geometry => L<Paws::Rekognition::Geometry>

  The location of the detected text on the image. Includes an axis
aligned coarse bounding box surrounding the text and a finer grain
polygon for more accurate spatial information.


=head2 Id => Int

  The identifier for the detected text. The identifier is only unique for
a single call to C<DetectText>.


=head2 ParentId => Int

  The Parent identifier for the detected text identified by the value of
C<ID>. If the type of detected text is C<LINE>, the value of
C<ParentId> is C<Null>.


=head2 Type => Str

  The type of text that was detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

