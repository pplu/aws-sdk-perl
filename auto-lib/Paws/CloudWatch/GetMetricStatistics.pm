
package Paws::CloudWatch::GetMetricStatistics;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has ExtendedStatistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetMetricStatisticsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricStatisticsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricStatistics - Arguments for method GetMetricStatistics on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricStatistics on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetMetricStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricStatistics.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetMetricStatisticsOutput = $monitoring->GetMetricStatistics(
      EndTime    => '1970-01-01T01:00:00',
      MetricName => 'MyMetricName',
      Namespace  => 'MyNamespace',
      Period     => 1,
      StartTime  => '1970-01-01T01:00:00',
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255

        },
        ...
      ],                                  # OPTIONAL
      ExtendedStatistics => [ 'MyExtendedStatistic', ... ],    # OPTIONAL
      Statistics => [
        'SampleCount', ... # values: SampleCount, Average, Sum, Minimum, Maximum
      ],                   # OPTIONAL
      Unit => 'Seconds',   # OPTIONAL
    );

    # Results:
    my $Datapoints = $GetMetricStatisticsOutput->Datapoints;
    my $Label      = $GetMetricStatisticsOutput->Label;

    # Returns a L<Paws::CloudWatch::GetMetricStatisticsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetMetricStatistics>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The dimensions. If the metric contains multiple dimensions, you must
include a value for each dimension. CloudWatch treats each unique
combination of dimensions as a separate metric. If a specific
combination of dimensions was not published, you can't retrieve
statistics for it. You must specify the same dimensions that were used
when the metrics were created. For an example, see Dimension
Combinations
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations)
in the I<Amazon CloudWatch User Guide>. For more information about
specifying dimensions, see Publishing Metrics
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
in the I<Amazon CloudWatch User Guide>.



=head2 B<REQUIRED> EndTime => Str

The time stamp that determines the last data point to return.

The value specified is exclusive; results include data points up to the
specified time stamp. The time stamp must be in ISO 8601 UTC format
(for example, 2016-10-10T23:00:00Z).



=head2 ExtendedStatistics => ArrayRef[Str|Undef]

The percentile statistics. Specify values between p0.0 and p100. When
calling C<GetMetricStatistics>, you must specify either C<Statistics>
or C<ExtendedStatistics>, but not both. Percentile statistics are not
available for metrics when any of the metric values are negative
numbers.



=head2 B<REQUIRED> MetricName => Str

The name of the metric, with or without spaces.



=head2 B<REQUIRED> Namespace => Str

The namespace of the metric, with or without spaces.



=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points. For metrics
with regular resolution, a period can be as short as one minute (60
seconds) and must be a multiple of 60. For high-resolution metrics that
are collected at intervals of less than one minute, the period can be
1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are
those metrics stored by a C<PutMetricData> call that includes a
C<StorageResolution> of 1 second.

If the C<StartTime> parameter specifies a time stamp that is greater
than 3 hours ago, you must specify the period as follows or no data
points in that time range is returned:

=over

=item *

Start time between 3 hours and 15 days ago - Use a multiple of 60
seconds (1 minute).

=item *

Start time between 15 and 63 days ago - Use a multiple of 300 seconds
(5 minutes).

=item *

Start time greater than 63 days ago - Use a multiple of 3600 seconds (1
hour).

=back




=head2 B<REQUIRED> StartTime => Str

The time stamp that determines the first data point to return. Start
times are evaluated relative to the time that CloudWatch receives the
request.

The value specified is inclusive; results include data points with the
specified time stamp. The time stamp must be in ISO 8601 UTC format
(for example, 2016-10-03T23:00:00Z).

CloudWatch rounds the specified time stamp as follows:

=over

=item *

Start time less than 15 days ago - Round down to the nearest whole
minute. For example, 12:32:34 is rounded down to 12:32:00.

=item *

Start time between 15 and 63 days ago - Round down to the nearest
5-minute clock interval. For example, 12:32:34 is rounded down to
12:30:00.

=item *

Start time greater than 63 days ago - Round down to the nearest 1-hour
clock interval. For example, 12:32:34 is rounded down to 12:00:00.

=back

If you set C<Period> to 5, 10, or 30, the start time of your request is
rounded down to the nearest time that corresponds to even 5-, 10-, or
30-second divisions of a minute. For example, if you make a query at
(HH:mm:ss) 01:05:23 for the previous 10-second period, the start time
of your request is rounded down and you receive data from 01:05:10 to
01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of
data, using a period of 5 seconds, you receive data timestamped between
15:02:15 and 15:07:15.



=head2 Statistics => ArrayRef[Str|Undef]

The metric statistics, other than percentile. For percentile
statistics, use C<ExtendedStatistics>. When calling
C<GetMetricStatistics>, you must specify either C<Statistics> or
C<ExtendedStatistics>, but not both.



=head2 Unit => Str

The unit for a given metric. Metrics may be reported in multiple units.
Not supplying a unit results in all units being returned. If you
specify only a unit that the metric does not report, the results of the
call are null.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricStatistics in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

