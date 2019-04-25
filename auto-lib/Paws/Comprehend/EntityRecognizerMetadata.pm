package Paws::Comprehend::EntityRecognizerMetadata;
  use Moose;
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem]');
  has EvaluationMetrics => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerEvaluationMetrics');
  has NumberOfTestDocuments => (is => 'ro', isa => 'Int');
  has NumberOfTrainedDocuments => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerMetadata object:

  $service_obj->Method(Att1 => { EntityTypes => $value, ..., NumberOfTrainedDocuments => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityTypes

=head1 DESCRIPTION

Detailed information about an entity recognizer.

=head1 ATTRIBUTES


=head2 EntityTypes => ArrayRef[L<Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem>]

  Entity types from the metadata of an entity recognizer.


=head2 EvaluationMetrics => L<Paws::Comprehend::EntityRecognizerEvaluationMetrics>

  Detailed information about the accuracy of an entity recognizer.


=head2 NumberOfTestDocuments => Int

  The number of documents in the input data that were used to test the
entity recognizer. Typically this is 10 to 20 percent of the input
documents.


=head2 NumberOfTrainedDocuments => Int

  The number of documents in the input data that were used to train the
entity recognizer. Typically this is 80 to 90 percent of the input
documents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

