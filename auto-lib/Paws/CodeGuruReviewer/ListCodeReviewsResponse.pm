
package Paws::CodeGuruReviewer::ListCodeReviewsResponse;
  use Moose;
  has CodeReviewSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruReviewer::CodeReviewSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListCodeReviewsResponse

=head1 ATTRIBUTES


=head2 CodeReviewSummaries => ArrayRef[L<Paws::CodeGuruReviewer::CodeReviewSummary>]

A list of code reviews that meet the criteria of the request.


=head2 NextToken => Str

Pagination token.


=head2 _request_id => Str


=cut

