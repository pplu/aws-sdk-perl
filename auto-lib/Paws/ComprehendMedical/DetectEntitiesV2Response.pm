
package Paws::ComprehendMedical::DetectEntitiesV2Response;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::Entity]', required => 1);
  has ModelVersion => (is => 'ro', isa => 'Str', required => 1);
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UnmappedAttributes => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::UnmappedAttribute]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectEntitiesV2Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::ComprehendMedical::Entity>]

The collection of medical entities extracted from the input text and
their associated information. For each entity, the response provides
the entity text, the entity category, where the entity text begins and
ends, and the level of confidence in the detection and analysis.
Attributes and traits of the entity are also returned.


=head2 B<REQUIRED> ModelVersion => Str

The version of the model used to analyze the documents. The version
number looks like X.X.X. You can use this information to track the
model used for a particular batch of documents.


=head2 PaginationToken => Str

If the result to the C<DetectEntitiesV2> operation was truncated,
include the C<PaginationToken> to fetch the next page of entities.


=head2 UnmappedAttributes => ArrayRef[L<Paws::ComprehendMedical::UnmappedAttribute>]

Attributes extracted from the input text that couldn't be related to an
entity.


=head2 _request_id => Str


=cut

1;