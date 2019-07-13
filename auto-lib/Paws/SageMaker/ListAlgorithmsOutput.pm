
package Paws::SageMaker::ListAlgorithmsOutput;
  use Moose;
  has AlgorithmSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AlgorithmSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAlgorithmsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSummaryList => ArrayRef[L<Paws::SageMaker::AlgorithmSummary>]

E<gt>An array of C<AlgorithmSummary> objects, each of which lists an
algorithm.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of algorithms, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;