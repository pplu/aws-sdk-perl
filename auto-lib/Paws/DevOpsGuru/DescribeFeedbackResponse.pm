
package Paws::DevOpsGuru::DescribeFeedbackResponse;
  use Moose;
  has InsightFeedback => (is => 'ro', isa => 'Paws::DevOpsGuru::InsightFeedback');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeFeedbackResponse

=head1 ATTRIBUTES


=head2 InsightFeedback => L<Paws::DevOpsGuru::InsightFeedback>




=head2 _request_id => Str


=cut

