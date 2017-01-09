
package Paws::CloudWatch::DescribeAlarmsForMetricOutput;
  use Moose;
  has MetricAlarms => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricAlarm]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAlarmsForMetricOutput

=head1 ATTRIBUTES


=head2 MetricAlarms => ArrayRef[L<Paws::CloudWatch::MetricAlarm>]

The information for each alarm with the specified metric.


=head2 _request_id => Str


=cut

