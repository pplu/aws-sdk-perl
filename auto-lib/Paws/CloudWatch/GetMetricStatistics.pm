
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

Paws::CloudWatch::GetMetricStatistics - Arguments for method GetMetricStatistics on Paws::CloudWatch

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricStatistics on the 
Amazon CloudWatch service. Use the attributes of this class
as arguments to method GetMetricStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricStatistics.

As an example:

  $service_obj->GetMetricStatistics(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The dimensions. CloudWatch treats each unique combination of dimensions
as a separate metric. You can't retrieve statistics using combinations
of dimensions that were not specially published. You must specify the
same dimensions that were used when the metrics were created. For an
example, see Dimension Combinations in the I<Amazon CloudWatch User
Guide>.



=head2 B<REQUIRED> EndTime => Str

The time stamp that determines the last data point to return.

The value specified is exclusive; results will include data points up
to the specified time stamp. The time stamp must be in ISO 8601 UTC
format (for example, 2016-10-10T23:00:00Z).



=head2 ExtendedStatistics => ArrayRef[Str|Undef]

The percentile statistics. Specify values between p0.0 and p100.



=head2 B<REQUIRED> MetricName => Str

The name of the metric, with or without spaces.



=head2 B<REQUIRED> Namespace => Str

The namespace of the metric, with or without spaces.



=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points. A period can
be as short as one minute (60 seconds) and must be a multiple of 60.
The default value is 60.

If the C<StartTime> parameter specifies a time stamp that is greater
than 15 days ago, you must specify the period as follows or no data
points in that time range is returned:

=over

=item *

Start time between 15 and 63 days ago - Use a multiple of 300 seconds
(5 minutes).

=item *

Start time greater than 63 days ago - Use a multiple of 3600 seconds (1
hour).

=back




=head2 B<REQUIRED> StartTime => Str

The time stamp that determines the first data point to return. Note
that start times are evaluated relative to the time that CloudWatch
receives the request.

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




=head2 Statistics => ArrayRef[Str|Undef]

The metric statistics, other than percentile. For percentile
statistics, use C<ExtendedStatistic>.



=head2 Unit => Str

The unit for a given metric. Metrics may be reported in multiple units.
Not supplying a unit results in all units being returned. If the metric
only ever reports one unit, specifying a unit has no effect.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricStatistics in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

