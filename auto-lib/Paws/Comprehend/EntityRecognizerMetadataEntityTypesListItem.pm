# Generated from default/object.tt
package Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Comprehend::Types qw/Comprehend_EntityTypesEvaluationMetrics/;
  has EvaluationMetrics => (is => 'ro', isa => Comprehend_EntityTypesEvaluationMetrics);
  has NumberOfTrainMentions => (is => 'ro', isa => Int);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EvaluationMetrics' => {
                                        'class' => 'Paws::Comprehend::EntityTypesEvaluationMetrics',
                                        'type' => 'Comprehend_EntityTypesEvaluationMetrics'
                                      },
               'Type' => {
                           'type' => 'Str'
                         },
               'NumberOfTrainMentions' => {
                                            'type' => 'Int'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem object:

  $service_obj->Method(Att1 => { EvaluationMetrics => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerMetadataEntityTypesListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->EvaluationMetrics

=head1 DESCRIPTION

Individual item from the list of entity types in the metadata of an
entity recognizer.

=head1 ATTRIBUTES


=head2 EvaluationMetrics => Comprehend_EntityTypesEvaluationMetrics

  Detailed information about the accuracy of the entity recognizer for a
specific item on the list of entity types.


=head2 NumberOfTrainMentions => Int

  Indicates the number of times the given entity type was seen in the
training data.


=head2 Type => Str

  Type of entity from the list of entity types in the metadata of an
entity recognizer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

