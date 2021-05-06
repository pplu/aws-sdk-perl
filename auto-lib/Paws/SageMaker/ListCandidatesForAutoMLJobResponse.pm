
package Paws::SageMaker::ListCandidatesForAutoMLJobResponse;
  use Moose;
  has Candidates => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLCandidate]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListCandidatesForAutoMLJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Candidates => ArrayRef[L<Paws::SageMaker::AutoMLCandidate>]

Summaries about the Candidates.


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;