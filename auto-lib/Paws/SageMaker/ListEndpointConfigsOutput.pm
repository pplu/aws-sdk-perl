
package Paws::SageMaker::ListEndpointConfigsOutput;
  use Moose;
  has EndpointConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EndpointConfigSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpointConfigsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigs => ArrayRef[L<Paws::SageMaker::EndpointConfigSummary>]

An array of endpoint configurations.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of endpoint configurations, use it in the
subsequent request


=head2 _request_id => Str


=cut

1;