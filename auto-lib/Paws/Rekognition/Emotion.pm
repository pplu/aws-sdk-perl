package Paws::Rekognition::Emotion;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Emotion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Emotion object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Emotion object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

The emotions that appear to be expressed on the face, and the
confidence level in the determination. The API is only making a
determination of the physical appearance of a person's face. It is not
a determination of the personE<rsquo>s internal emotional state and
should not be used in such a way. For example, a person pretending to
have a sad face might not be sad emotionally.

=head1 ATTRIBUTES


=head2 Confidence => Num

  Level of confidence in the determination.


=head2 Type => Str

  Type of emotion detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

