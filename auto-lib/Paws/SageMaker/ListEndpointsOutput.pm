
package Paws::SageMaker::ListEndpointsOutput;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EndpointSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpointsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::SageMaker::EndpointSummary>]

An array or endpoint objects.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of training jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;