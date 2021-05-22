
package Paws::IoT::CreateCustomMetricResponse;
  use Moose;
  has MetricArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricArn');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCustomMetricResponse

=head1 ATTRIBUTES


=head2 MetricArn => Str

The Amazon Resource Number (ARN) of the custom metric, e.g.
C<arn:I<aws-partition>:iot:I<region>:I<accountId>:custommetric/I<metricName>>


=head2 MetricName => Str

The name of the custom metric to be used in the metric report.


=head2 _request_id => Str


=cut

