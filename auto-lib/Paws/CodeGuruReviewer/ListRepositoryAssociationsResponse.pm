
package Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RepositoryAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruReviewer::RepositoryAssociationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRecommendations>
request. When the results of a C<ListRecommendations> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 RepositoryAssociationSummaries => ArrayRef[L<Paws::CodeGuruReviewer::RepositoryAssociationSummary>]

A list of repository associations that meet the criteria of the
request.


=head2 _request_id => Str


=cut

