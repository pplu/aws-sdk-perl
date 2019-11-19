# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::DetectPHIResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_Entity/;
  has Entities => (is => 'ro', isa => ArrayRef[ComprehendMedical_Entity], required => 1);
  has ModelVersion => (is => 'ro', isa => Str, required => 1);
  has PaginationToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Entities' => 1,
                    'ModelVersion' => 1
                  },
  'types' => {
               'Entities' => {
                               'class' => 'Paws::ComprehendMedical::Entity',
                               'type' => 'ArrayRef[ComprehendMedical_Entity]'
                             },
               'ModelVersion' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PaginationToken' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectPHIResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[ComprehendMedical_Entity]

The collection of PHI entities extracted from the input text and their
associated information. For each entity, the response provides the
entity text, the entity category, where the entity text begins and
ends, and the level of confidence that Amazon Comprehend Medical has in
its detection.


=head2 B<REQUIRED> ModelVersion => Str

The version of the model used to analyze the documents. The version
number looks like X.X.X. You can use this information to track the
model used for a particular batch of documents.


=head2 PaginationToken => Str

If the result of the previous request to C<DetectPHI> was truncated,
include the C<PaginationToken> to fetch the next page of PHI entities.


=head2 _request_id => Str


=cut

1;