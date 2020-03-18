package Paws::Comprehend::ClassifierEvaluationMetrics;
  use Moose;
  has Accuracy => (is => 'ro', isa => 'Num');
  has F1Score => (is => 'ro', isa => 'Num');
  has HammingLoss => (is => 'ro', isa => 'Num');
  has MicroF1Score => (is => 'ro', isa => 'Num');
  has MicroPrecision => (is => 'ro', isa => 'Num');
  has MicroRecall => (is => 'ro', isa => 'Num');
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


=head2 HammingLoss => Num

  Indicates the fraction of labels that are incorrectly predicted. Also
seen as the fraction of wrong labels compared to the total number of
labels. Scores closer to zero are better.


=head2 MicroF1Score => Num

  A measure of how accurate the classifier results are for the test data.
It is a combination of the C<Micro Precision> and C<Micro Recall>
values. The C<Micro F1Score> is the harmonic mean of the two scores.
The highest score is 1, and the worst score is 0.


=head2 MicroPrecision => Num

  A measure of the usefulness of the recognizer results in the test data.
High precision means that the recognizer returned substantially more
relevant results than irrelevant ones. Unlike the Precision metric
which comes from averaging the precision of all available labels, this
is based on the overall score of all precision scores added together.


=head2 MicroRecall => Num

  A measure of how complete the classifier results are for the test data.
High recall means that the classifier returned most of the relevant
results. Specifically, this indicates how many of the correct
categories in the text that the model can predict. It is a percentage
of correct categories in the text that can found. Instead of averaging
the recall scores of all labels (as with Recall), micro Recall is based
on the overall score of all recall scores added together.


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

