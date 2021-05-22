
package Paws::LookoutMetrics::DescribeMetricSetResponse;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DimensionList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has MetricList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::Metric]');
  has MetricSetArn => (is => 'ro', isa => 'Str');
  has MetricSetDescription => (is => 'ro', isa => 'Str');
  has MetricSetFrequency => (is => 'ro', isa => 'Str');
  has MetricSetName => (is => 'ro', isa => 'Str');
  has MetricSource => (is => 'ro', isa => 'Paws::LookoutMetrics::MetricSource');
  has Offset => (is => 'ro', isa => 'Int');
  has TimestampColumn => (is => 'ro', isa => 'Paws::LookoutMetrics::TimestampColumn');
  has Timezone => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeMetricSetResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the detector that contains the dataset.


=head2 CreationTime => Str

The time at which the dataset was created.


=head2 DimensionList => ArrayRef[Str|Undef]

A list of the dimensions chosen for analysis.


=head2 LastModificationTime => Str

The time at which the dataset was last modified.


=head2 MetricList => ArrayRef[L<Paws::LookoutMetrics::Metric>]

A list of the metrics defined by the dataset.


=head2 MetricSetArn => Str

The ARN of the dataset.


=head2 MetricSetDescription => Str

The dataset's description.


=head2 MetricSetFrequency => Str

The interval at which the data will be analyzed for anomalies.

Valid values are: C<"P1D">, C<"PT1H">, C<"PT10M">, C<"PT5M">
=head2 MetricSetName => Str

The name of the dataset.


=head2 MetricSource => L<Paws::LookoutMetrics::MetricSource>

Contains information about the dataset's source data.


=head2 Offset => Int

The offset for the dataset.


=head2 TimestampColumn => L<Paws::LookoutMetrics::TimestampColumn>

Contains information about the column used for tracking time in your
source data.


=head2 Timezone => Str

The time zone in which the dataset's data was recorded.


=head2 _request_id => Str


=cut

