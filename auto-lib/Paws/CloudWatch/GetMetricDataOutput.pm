
package Paws::CloudWatch::GetMetricDataOutput;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MessageData]');
  has MetricDataResults => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricDataOutput

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[L<Paws::CloudWatch::MessageData>]

Contains a message about this C<GetMetricData> operation, if the
operation results in such a message. An example of a message that might
be returned is C<Maximum number of allowed metrics exceeded>. If there
is a message, as much of the operation as possible is still executed.

A message appears here only if it is related to the global
C<GetMetricData> operation. Any message about a specific metric
returned by the operation appears in the C<MetricDataResult> object
returned for that metric.


=head2 MetricDataResults => ArrayRef[L<Paws::CloudWatch::MetricDataResult>]

The metrics that are returned, including the metric name, namespace,
and dimensions.


=head2 NextToken => Str

A token that marks the next batch of returned results.


=head2 _request_id => Str


=cut

