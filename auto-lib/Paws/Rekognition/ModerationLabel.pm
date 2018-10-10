package Paws::Rekognition::ModerationLabel;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Name => (is => 'ro', isa => 'Str');
  has ParentName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ModerationLabel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ModerationLabel object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., ParentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ModerationLabel object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

Provides information about a single type of moderated content found in
an image or video. Each type of moderated content has a label within a
hierarchical taxonomy. For more information, see Detecting Unsafe
Content in the Amazon Rekognition Developer Guide.

=head1 ATTRIBUTES


=head2 Confidence => Num

  Specifies the confidence that Amazon Rekognition has that the label has
been correctly identified.

If you don't specify the C<MinConfidence> parameter in the call to
C<DetectModerationLabels>, the operation returns labels with a
confidence value greater than or equal to 50 percent.


=head2 Name => Str

  The label name for the type of content detected in the image.


=head2 ParentName => Str

  The name for the parent label. Labels at the top level of the hierarchy
have the parent label C<"">.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

