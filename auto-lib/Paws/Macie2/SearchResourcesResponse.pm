
package Paws::Macie2::SearchResourcesResponse;
  use Moose;
  has MatchingResources => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::MatchingResource]', traits => ['NameInRequest'], request_name => 'matchingResources');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::SearchResourcesResponse

=head1 ATTRIBUTES


=head2 MatchingResources => ArrayRef[L<Paws::Macie2::MatchingResource>]

An array of objects, one for each resource that meets the filter
criteria specified in the request.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

