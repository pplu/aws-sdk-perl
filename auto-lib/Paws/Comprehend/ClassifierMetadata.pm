package Paws::Comprehend::ClassifierMetadata;
  use Moose;
  has EvaluationMetrics => (is => 'ro', isa => 'Paws::Comprehend::ClassifierEvaluationMetrics');
  has NumberOfLabels => (is => 'ro', isa => 'Int');
  has NumberOfTestDocuments => (is => 'ro', isa => 'Int');
  has NumberOfTrainedDocuments => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ClassifierMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::ClassifierMetadata object:

  $service_obj->Method(Att1 => { EvaluationMetrics => $value, ..., NumberOfTrainedDocuments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::ClassifierMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationMetrics

=head1 DESCRIPTION

Provides information about a document classifier.

=head1 ATTRIBUTES


=head2 EvaluationMetrics => L<Paws::Comprehend::ClassifierEvaluationMetrics>

  Describes the result metrics for the test data associated with an
documentation classifier.


=head2 NumberOfLabels => Int

  The number of labels in the input data.


=head2 NumberOfTestDocuments => Int

  The number of documents in the input data that were used to test the
classifier. Typically this is 10 to 20 percent of the input documents.


=head2 NumberOfTrainedDocuments => Int

  The number of documents in the input data that were used to train the
classifier. Typically this is 80 to 90 percent of the input documents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

