package Paws::Rekognition::Gender;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Gender

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Gender object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Gender object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

The predicted gender of a detected face.

Amazon Rekognition makes gender binary (male/female) predictions based
on the physical appearance of a face in a particular image. This kind
of prediction is not designed to categorize a personE<rsquo>s gender
identity, and you shouldn't use Amazon Rekognition to make such a
determination. For example, a male actor wearing a long-haired wig and
earrings for a role might be predicted as female.

Using Amazon Rekognition to make gender binary predictions is best
suited for use cases where aggregate gender distribution statistics
need to be analyzed without identifying specific users. For example,
the percentage of female users compared to male users on a social media
platform.

We don't recommend using gender binary predictions to make decisions
that impact an individual's rights, privacy, or access to services.

=head1 ATTRIBUTES


=head2 Confidence => Num

  Level of confidence in the prediction.


=head2 Value => Str

  The predicted gender of the face.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

