
package Paws::ComprehendMedical::DetectPHIResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::Entity]', required => 1);
  has PaginationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectPHIResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::ComprehendMedical::Entity>]

The collection of PHI entities extracted from the input text and their
associated information. For each entity, the response provides the
entity text, the entity category, where the entity text begins and
ends, and the level of confidence that Comprehend Medical has in its
detection.


=head2 PaginationToken => Str

If the result of the previous request to DetectPHI was truncated,
include the Paginationtoken to fetch the next page of PHI entities.


=head2 _request_id => Str


=cut

1;