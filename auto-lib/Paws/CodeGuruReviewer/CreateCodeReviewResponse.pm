
package Paws::CodeGuruReviewer::CreateCodeReviewResponse;
  use Moose;
  has CodeReview => (is => 'ro', isa => 'Paws::CodeGuruReviewer::CodeReview');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::CreateCodeReviewResponse

=head1 ATTRIBUTES


=head2 CodeReview => L<Paws::CodeGuruReviewer::CodeReview>




=head2 _request_id => Str


=cut

