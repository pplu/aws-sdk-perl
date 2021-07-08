
package Paws::CodeGuruReviewer::DescribeRecommendationFeedbackResponse;
  use Moose;
  has RecommendationFeedback => (is => 'ro', isa => 'Paws::CodeGuruReviewer::RecommendationFeedback');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::DescribeRecommendationFeedbackResponse

=head1 ATTRIBUTES


=head2 RecommendationFeedback => L<Paws::CodeGuruReviewer::RecommendationFeedback>

The recommendation feedback given by the user.


=head2 _request_id => Str


=cut

