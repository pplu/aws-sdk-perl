# Generated by default/object.tt
package Paws::Comprehend::EntityRecognizerInputDataConfig;
  use Moose;
  has Annotations => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerAnnotations');
  has AugmentedManifests => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::AugmentedManifestsListItem]');
  has DataFormat => (is => 'ro', isa => 'Str');
  has Documents => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerDocuments');
  has EntityList => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerEntityList');
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntityTypesListItem]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerInputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerInputDataConfig object:

  $service_obj->Method(Att1 => { Annotations => $value, ..., EntityTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerInputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Annotations

=head1 DESCRIPTION

Specifies the format and location of the input data.

=head1 ATTRIBUTES


=head2 Annotations => L<Paws::Comprehend::EntityRecognizerAnnotations>

The S3 location of the CSV file that annotates your training documents.


=head2 AugmentedManifests => ArrayRef[L<Paws::Comprehend::AugmentedManifestsListItem>]

A list of augmented manifest files that provide training data for your
custom model. An augmented manifest file is a labeled dataset that is
produced by Amazon SageMaker Ground Truth.

This parameter is required if you set C<DataFormat> to
C<AUGMENTED_MANIFEST>.


=head2 DataFormat => Str

The format of your training data:

=over

=item *

C<COMPREHEND_CSV>: A CSV file that supplements your training documents.
The CSV file contains information about the custom entities that your
trained model will detect. The required format of the file depends on
whether you are providing annotations or an entity list.

If you use this value, you must provide your CSV file by using either
the C<Annotations> or C<EntityList> parameters. You must provide your
training documents by using the C<Documents> parameter.

=item *

C<AUGMENTED_MANIFEST>: A labeled dataset that is produced by Amazon
SageMaker Ground Truth. This file is in JSON lines format. Each line is
a complete JSON object that contains a training document and its
labels. Each label annotates a named entity in the training document.

If you use this value, you must provide the C<AugmentedManifests>
parameter in your request.

=back

If you don't specify a value, Amazon Comprehend uses C<COMPREHEND_CSV>
as the default.


=head2 Documents => L<Paws::Comprehend::EntityRecognizerDocuments>

The S3 location of the folder that contains the training documents for
your custom entity recognizer.

This parameter is required if you set C<DataFormat> to
C<COMPREHEND_CSV>.


=head2 EntityList => L<Paws::Comprehend::EntityRecognizerEntityList>

The S3 location of the CSV file that has the entity list for your
custom entity recognizer.


=head2 B<REQUIRED> EntityTypes => ArrayRef[L<Paws::Comprehend::EntityTypesListItem>]

The entity types in the labeled training data that Amazon Comprehend
uses to train the custom entity recognizer. Any entity types that you
don't specify are ignored.

A maximum of 25 entity types can be used at one time to train an entity
recognizer. Entity types must not contain the following invalid
characters: \n (line break), \\n (escaped line break), \r (carriage
return), \\r (escaped carriage return), \t (tab), \\t (escaped tab),
space, and , (comma).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

