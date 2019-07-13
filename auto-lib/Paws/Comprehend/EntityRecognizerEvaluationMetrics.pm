package Paws::Comprehend::EntityRecognizerEvaluationMetrics;
  use Moose;
  has F1Score => (is => 'ro', isa => 'Num');
  has Precision => (is => 'ro', isa => 'Num');
  has Recall => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerEvaluationMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerEvaluationMetrics object:

  $service_obj->Method(Att1 => { F1Score => $value, ..., Recall => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerEvaluationMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->F1Score

=head1 DESCRIPTION

Detailed information about the accuracy of an entity recognizer.

=head1 ATTRIBUTES


=head2 F1Score => Num

  A measure of how accurate the recognizer results are for the test data.
It is derived from the C<Precision> and C<Recall> values. The
C<F1Score> is the harmonic average of the two scores. The highest score
is 1, and the worst score is 0.


=head2 Precision => Num

  A measure of the usefulness of the recognizer results in the test data.
High precision means that the recognizer returned substantially more
relevant results than irrelevant ones.


=head2 Recall => Num

  A measure of how complete the recognizer results are for the test data.
High recall means that the recognizer returned most of the relevant
results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

