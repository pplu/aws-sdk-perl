
package Paws::Robomaker::ListWorldGenerationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorldGenerationJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::WorldGenerationJobSummary]', traits => ['NameInRequest'], request_name => 'worldGenerationJobSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListWorldGenerationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous paginated request did not return all of the remaining
results, the response object's C<nextToken> parameter value is set to a
token. To retrieve the next set of results, call
C<ListWorldGeneratorJobsRequest> again and assign that token to the
request object's C<nextToken> parameter. If there are no remaining
results, the previous response object's NextToken parameter is set to
null.


=head2 B<REQUIRED> WorldGenerationJobSummaries => ArrayRef[L<Paws::Robomaker::WorldGenerationJobSummary>]

Summary information for world generator jobs.


=head2 _request_id => Str


=cut

