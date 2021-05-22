
package Paws::LookoutMetrics::UpdateMetricSetResponse;
  use Moose;
  has MetricSetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::UpdateMetricSetResponse

=head1 ATTRIBUTES


=head2 MetricSetArn => Str

The ARN of the dataset.


=head2 _request_id => Str


=cut

