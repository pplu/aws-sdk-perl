# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::DetectEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_Entity ComprehendMedical_UnmappedAttribute/;
  has Entities => (is => 'ro', isa => ArrayRef[ComprehendMedical_Entity], required => 1);
  has ModelVersion => (is => 'ro', isa => Str, required => 1);
  has PaginationToken => (is => 'ro', isa => Str);
  has UnmappedAttributes => (is => 'ro', isa => ArrayRef[ComprehendMedical_UnmappedAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnmappedAttributes' => {
                                         'type' => 'ArrayRef[ComprehendMedical_UnmappedAttribute]',
                                         'class' => 'Paws::ComprehendMedical::UnmappedAttribute'
                                       },
               'ModelVersion' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               'Entities' => {
                               'type' => 'ArrayRef[ComprehendMedical_Entity]',
                               'class' => 'Paws::ComprehendMedical::Entity'
                             }
             },
  'IsRequired' => {
                    'ModelVersion' => 1,
                    'Entities' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectEntitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[ComprehendMedical_Entity]

The collection of medical entities extracted from the input text and
their associated information. For each entity, the response provides
the entity text, the entity category, where the entity text begins and
ends, and the level of confidence that Amazon Comprehend Medical has in
the detection and analysis. Attributes and traits of the entity are
also returned.


=head2 B<REQUIRED> ModelVersion => Str

The version of the model used to analyze the documents. The version
number looks like X.X.X. You can use this information to track the
model used for a particular batch of documents.


=head2 PaginationToken => Str

If the result of the previous request to C<DetectEntities> was
truncated, include the C<PaginationToken> to fetch the next page of
entities.


=head2 UnmappedAttributes => ArrayRef[ComprehendMedical_UnmappedAttribute]

Attributes extracted from the input text that we were unable to relate
to an entity.


=head2 _request_id => Str


=cut

1;