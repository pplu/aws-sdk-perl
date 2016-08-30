
package Paws::CloudWatch::GetMetricStatistics;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
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

A list of dimensions describing qualities of the metric.



=head2 B<REQUIRED> EndTime => Str

The time stamp to use for determining the last datapoint to return. The
value specified is exclusive; results will include datapoints up to the
time stamp specified. The time stamp must be in ISO 8601 UTC format
(e.g., 2014-09-03T23:00:00Z).



=head2 B<REQUIRED> MetricName => Str

The name of the metric, with or without spaces.



=head2 B<REQUIRED> Namespace => Str

The namespace of the metric, with or without spaces.



=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned datapoints. A C<Period>
can be as short as one minute (60 seconds) or as long as one day
(86,400 seconds), and must be a multiple of 60. The default value is
60.



=head2 B<REQUIRED> StartTime => Str

The time stamp to use for determining the first datapoint to return.
The value specified is inclusive; results include datapoints with the
time stamp specified. The time stamp must be in ISO 8601 UTC format
(e.g., 2014-09-03T23:00:00Z).

The specified start time is rounded down to the nearest value.
Datapoints are returned for start times up to two weeks in the past.
Specified start times that are more than two weeks in the past will not
return datapoints for metrics that are older than two weeks.

Data that is timestamped 24 hours or more in the past may take in
excess of 48 hours to become available from submission time using
C<GetMetricStatistics>.



=head2 B<REQUIRED> Statistics => ArrayRef[Str]

The metric statistics to return. For information about specific
statistics returned by GetMetricStatistics, see Statistics in the
I<Amazon CloudWatch Developer Guide>.



=head2 Unit => Str

The specific unit for a given metric. Metrics may be reported in
multiple units. Not supplying a unit results in all units being
returned. If the metric only ever reports one unit, specifying a unit
will have no effect.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricStatistics in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

