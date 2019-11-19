# Generated from default/object.tt
package Paws::Comprehend::EntityRecognizerInputDataConfig;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_EntityRecognizerEntityList Comprehend_EntityRecognizerAnnotations Comprehend_EntityTypesListItem Comprehend_EntityRecognizerDocuments/;
  has Annotations => (is => 'ro', isa => Comprehend_EntityRecognizerAnnotations);
  has Documents => (is => 'ro', isa => Comprehend_EntityRecognizerDocuments, required => 1);
  has EntityList => (is => 'ro', isa => Comprehend_EntityRecognizerEntityList);
  has EntityTypes => (is => 'ro', isa => ArrayRef[Comprehend_EntityTypesListItem], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Documents' => {
                                'class' => 'Paws::Comprehend::EntityRecognizerDocuments',
                                'type' => 'Comprehend_EntityRecognizerDocuments'
                              },
               'Annotations' => {
                                  'class' => 'Paws::Comprehend::EntityRecognizerAnnotations',
                                  'type' => 'Comprehend_EntityRecognizerAnnotations'
                                },
               'EntityTypes' => {
                                  'class' => 'Paws::Comprehend::EntityTypesListItem',
                                  'type' => 'ArrayRef[Comprehend_EntityTypesListItem]'
                                },
               'EntityList' => {
                                 'type' => 'Comprehend_EntityRecognizerEntityList',
                                 'class' => 'Paws::Comprehend::EntityRecognizerEntityList'
                               }
             },
  'IsRequired' => {
                    'Documents' => 1,
                    'EntityTypes' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 Annotations => Comprehend_EntityRecognizerAnnotations

  S3 location of the annotations file for an entity recognizer.


=head2 B<REQUIRED> Documents => Comprehend_EntityRecognizerDocuments

  S3 location of the documents folder for an entity recognizer


=head2 EntityList => Comprehend_EntityRecognizerEntityList

  S3 location of the entity list for an entity recognizer.


=head2 B<REQUIRED> EntityTypes => ArrayRef[Comprehend_EntityTypesListItem]

  The entity types in the input data for an entity recognizer. A maximum
of 12 entity types can be used at one time to train an entity
recognizer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

