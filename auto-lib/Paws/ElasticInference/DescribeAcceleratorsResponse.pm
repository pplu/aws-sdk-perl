
package Paws::ElasticInference::DescribeAcceleratorsResponse;
  use Moose;
  has AcceleratorSet => (is => 'ro', isa => 'ArrayRef[Paws::ElasticInference::ElasticInferenceAccelerator]', traits => ['NameInRequest'], request_name => 'acceleratorSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAcceleratorsResponse

=head1 ATTRIBUTES


=head2 AcceleratorSet => ArrayRef[L<Paws::ElasticInference::ElasticInferenceAccelerator>]

The details of the Elastic Inference Accelerators.


=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.


=head2 _request_id => Str


=cut

