package Paws::Comprehend::ClassifierEvaluationMetrics;
  use Moose;
  has Accuracy => (is => 'ro', isa => 'Num');
  has F1Score => (is => 'ro', isa => 'Num');
  has Precision => (is => 'ro', isa => 'Num');
  has Recall => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ClassifierEvaluationMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::ClassifierEvaluationMetrics object:

  $service_obj->Method(Att1 => { Accuracy => $value, ..., Recall => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::ClassifierEvaluationMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->Accuracy

=head1 DESCRIPTION

Describes the result metrics for the test data associated with an
documentation classifier.

=head1 ATTRIBUTES


=head2 Accuracy => Num

  The fraction of the labels that were correct recognized. It is computed
by dividing the number of labels in the test documents that were
correctly recognized by the total number of labels in the test
documents.


=head2 F1Score => Num

  A measure of how accurate the classifier results are for the test data.
It is derived from the C<Precision> and C<Recall> values. The
C<F1Score> is the harmonic average of the two scores. The highest score
is 1, and the worst score is 0.


=head2 Precision => Num

  A measure of the usefulness of the classifier results in the test data.
High precision means that the classifier returned substantially more
relevant results than irrelevant ones.


=head2 Recall => Num

  A measure of how complete the classifier results are for the test data.
High recall means that the classifier returned most of the relevant
results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

