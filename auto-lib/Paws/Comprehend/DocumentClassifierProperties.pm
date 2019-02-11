package Paws::Comprehend::DocumentClassifierProperties;
  use Moose;
  has ClassifierMetadata => (is => 'ro', isa => 'Paws::Comprehend::ClassifierMetadata');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has DocumentClassifierArn => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierInputDataConfig');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmitTime => (is => 'ro', isa => 'Str');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentClassifierProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClassifierProperties object:

  $service_obj->Method(Att1 => { ClassifierMetadata => $value, ..., TrainingStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClassifierProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ClassifierMetadata

=head1 DESCRIPTION

Provides information about a document classifier.

=head1 ATTRIBUTES


=head2 ClassifierMetadata => L<Paws::Comprehend::ClassifierMetadata>

  Information about the document classifier, including the number of
documents used for training the classifier, the number of documents
used for test the classifier, and an accuracy rating.


=head2 DataAccessRoleArn => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
role that grants Amazon Comprehend read access to your input data.


=head2 DocumentClassifierArn => Str

  The Amazon Resource Name (ARN) that identifies the document classifier.


=head2 EndTime => Str

  The time that training the document classifier completed.


=head2 InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

  The input data configuration that you supplied when you created the
document classifier for training.


=head2 LanguageCode => Str

  The language code for the language of the documents that the classifier
was trained on.


=head2 Message => Str

  Additional information about the status of the classifier.


=head2 Status => Str

  The status of the document classifier. If the status is C<TRAINED> the
classifier is ready to use. If the status is C<FAILED> you can see
additional information about why the classifier wasn't trained in the
C<Message> field.


=head2 SubmitTime => Str

  The time that the document classifier was submitted for training.


=head2 TrainingEndTime => Str

  The time that training of the document classifier was completed.
Indicates the time when the training completes on documentation
classifiers. You are billed for the time interval between this time and
the value of TrainingStartTime.


=head2 TrainingStartTime => Str

  Indicates the time when the training starts on documentation
classifiers. You are billed for the time interval between this time and
the value of TrainingEndTime.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

