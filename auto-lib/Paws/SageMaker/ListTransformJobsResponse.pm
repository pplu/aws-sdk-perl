
package Paws::SageMaker::ListTransformJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TransformJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TransformJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTransformJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of transform jobs, use it in the next request.


=head2 B<REQUIRED> TransformJobSummaries => ArrayRef[L<Paws::SageMaker::TransformJobSummary>]

An array of C<TransformJobSummary> objects.


=head2 _request_id => Str


=cut

1;