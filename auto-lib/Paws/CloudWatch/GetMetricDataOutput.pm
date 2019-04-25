
package Paws::CloudWatch::GetMetricDataOutput;
  use Moose;
  has MetricDataResults => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricDataOutput

=head1 ATTRIBUTES


=head2 MetricDataResults => ArrayRef[L<Paws::CloudWatch::MetricDataResult>]

The metrics that are returned, including the metric name, namespace,
and dimensions.


=head2 NextToken => Str

A token that marks the next batch of returned results.


=head2 _request_id => Str


=cut

