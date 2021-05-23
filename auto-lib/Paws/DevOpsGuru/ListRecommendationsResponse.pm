
package Paws::DevOpsGuru::ListRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::Recommendation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Recommendations => ArrayRef[L<Paws::DevOpsGuru::Recommendation>]

An array of the requested recommendations.


=head2 _request_id => Str


=cut

