package Paws::Comprehend::EntityRecognizerInputDataConfig;
  use Moose;
  has Annotations => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerAnnotations');
  has Documents => (is => 'ro', isa => 'Paws::Comprehend::EntityRecognizerDocuments', required => 1);
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

  S3 location of the annotations file for an entity recognizer.


=head2 B<REQUIRED> Documents => L<Paws::Comprehend::EntityRecognizerDocuments>

  S3 location of the documents folder for an entity recognizer


=head2 EntityList => L<Paws::Comprehend::EntityRecognizerEntityList>

  S3 location of the entity list for an entity recognizer.


=head2 B<REQUIRED> EntityTypes => ArrayRef[L<Paws::Comprehend::EntityTypesListItem>]

  The entity types in the input data for an entity recognizer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

