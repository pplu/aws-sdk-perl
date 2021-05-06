
package Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetricsResponse;
  use Moose;
  has RecommendedOptionProjectedMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendedOptionProjectedMetric]', traits => ['NameInRequest'], request_name => 'recommendedOptionProjectedMetrics' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEC2RecommendationProjectedMetricsResponse

=head1 ATTRIBUTES


=head2 RecommendedOptionProjectedMetrics => ArrayRef[L<Paws::ComputeOptimizer::RecommendedOptionProjectedMetric>]

An array of objects that describe a projected metrics.


=head2 _request_id => Str


=cut

1;