# Generated from json/callresult_class.tt

package Paws::Comprehend::DetectEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_Entity/;
  has Entities => (is => 'ro', isa => ArrayRef[Comprehend_Entity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Entities' => {
                               'class' => 'Paws::Comprehend::Entity',
                               'type' => 'ArrayRef[Comprehend_Entity]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectEntitiesResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[Comprehend_Entity]

A collection of entities identified in the input text. For each entity,
the response provides the entity text, entity type, where the entity
text begins and ends, and the level of confidence that Amazon
Comprehend has in the detection. For a list of entity types, see
how-entities.


=head2 _request_id => Str


=cut

1;