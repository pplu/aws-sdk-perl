
package Paws::CloudWatch::DescribeAlarmsForMetric;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has ExtendedStatistic => (is => 'ro', isa => 'Str');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int');
  has Statistic => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetric');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DescribeAlarmsForMetricOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsForMetricResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAlarmsForMetric - Arguments for method DescribeAlarmsForMetric on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlarmsForMetric on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DescribeAlarmsForMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlarmsForMetric.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DescribeAlarmsForMetricOutput = $monitoring->DescribeAlarmsForMetric(
      MetricName => 'MyMetricName',
      Namespace  => 'MyNamespace',
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255

        },
        ...
      ],                                  # OPTIONAL
      ExtendedStatistic => 'MyExtendedStatistic',    # OPTIONAL
      Period            => 1,                        # OPTIONAL
      Statistic         => 'SampleCount',            # OPTIONAL
      Unit              => 'Seconds',                # OPTIONAL
    );

    # Results:
    my $MetricAlarms = $DescribeAlarmsForMetricOutput->MetricAlarms;

    # Returns a L<Paws::CloudWatch::DescribeAlarmsForMetricOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeAlarmsForMetric>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The dimensions associated with the metric. If the metric has any
associated dimensions, you must specify them in order for the call to
succeed.



=head2 ExtendedStatistic => Str

The percentile statistic for the metric. Specify a value between p0.0
and p100.



=head2 B<REQUIRED> MetricName => Str

The name of the metric.



=head2 B<REQUIRED> Namespace => Str

The namespace of the metric.



=head2 Period => Int

The period, in seconds, over which the statistic is applied.



=head2 Statistic => Str

The statistic for the metric, other than percentiles. For percentile
statistics, use C<ExtendedStatistics>.

Valid values are: C<"SampleCount">, C<"Average">, C<"Sum">, C<"Minimum">, C<"Maximum">

=head2 Unit => Str

The unit for the metric.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarmsForMetric in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

