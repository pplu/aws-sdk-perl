
package Paws::Lightsail::GetInstanceMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics' , required => 1);
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetInstanceMetricDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceMetricData - Arguments for method GetInstanceMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetInstanceMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetInstanceMetricDataResult = $lightsail->GetInstanceMetricData(
      EndTime      => '1970-01-01T01:00:00',
      InstanceName => 'MyResourceName',
      MetricName   => 'CPUUtilization',
      Period       => 1,
      StartTime    => '1970-01-01T01:00:00',
      Statistics   => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],
      Unit => 'Seconds',

    );

    # Results:
    my $MetricData = $GetInstanceMetricDataResult->MetricData;
    my $MetricName = $GetInstanceMetricDataResult->MetricName;

    # Returns a L<Paws::Lightsail::GetInstanceMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetInstanceMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the time period.



=head2 B<REQUIRED> InstanceName => Str

The name of the instance for which you want to get metrics data.



=head2 B<REQUIRED> MetricName => Str

The metric for which you want to return information.

Valid instance metric names are listed below, along with the most
useful C<statistics> to include in your request, and the published
C<unit> value.

=over

=item *

B<C<BurstCapacityPercentage> > - The percentage of CPU performance
available for your instance to burst above its baseline. Your instance
continuously accrues and consumes burst capacity. Burst capacity stops
accruing when your instance's C<BurstCapacityPercentage> reaches 100%.
For more information, see Viewing instance burst capacity in Amazon
Lightsail
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity).

C<Statistics>: The most useful statistics are C<Maximum> and
C<Average>.

C<Unit>: The published unit is C<Percent>.

=item *

B<C<BurstCapacityTime> > - The available amount of time for your
instance to burst at 100% CPU utilization. Your instance continuously
accrues and consumes burst capacity. Burst capacity time stops accruing
when your instance's C<BurstCapacityPercentage> metric reaches 100%.

Burst capacity time is consumed at the full rate only when your
instance operates at 100% CPU utilization. For example, if your
instance operates at 50% CPU utilization in the burstable zone for a
5-minute period, then it consumes CPU burst capacity minutes at a 50%
rate in that period. Your instance consumed 2 minutes and 30 seconds of
CPU burst capacity minutes in the 5-minute period. For more
information, see Viewing instance burst capacity in Amazon Lightsail
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity).

C<Statistics>: The most useful statistics are C<Maximum> and
C<Average>.

C<Unit>: The published unit is C<Seconds>.

=item *

B<C<CPUUtilization> > - The percentage of allocated compute units that
are currently in use on the instance. This metric identifies the
processing power to run the applications on the instance. Tools in your
operating system can show a lower percentage than Lightsail when the
instance is not allocated a full processor core.

C<Statistics>: The most useful statistics are C<Maximum> and
C<Average>.

C<Unit>: The published unit is C<Percent>.

=item *

B<C<NetworkIn> > - The number of bytes received on all network
interfaces by the instance. This metric identifies the volume of
incoming network traffic to the instance. The number reported is the
number of bytes received during the period. Because this metric is
reported in 5-minute intervals, divide the reported number by 300 to
find Bytes/second.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Bytes>.

=item *

B<C<NetworkOut> > - The number of bytes sent out on all network
interfaces by the instance. This metric identifies the volume of
outgoing network traffic from the instance. The number reported is the
number of bytes sent during the period. Because this metric is reported
in 5-minute intervals, divide the reported number by 300 to find
Bytes/second.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Bytes>.

=item *

B<C<StatusCheckFailed> > - Reports whether the instance passed or
failed both the instance status check and the system status check. This
metric can be either 0 (passed) or 1 (failed). This metric data is
available in 1-minute (60 seconds) granularity.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Count>.

=item *

B<C<StatusCheckFailed_Instance> > - Reports whether the instance passed
or failed the instance status check. This metric can be either 0
(passed) or 1 (failed). This metric data is available in 1-minute (60
seconds) granularity.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Count>.

=item *

B<C<StatusCheckFailed_System> > - Reports whether the instance passed
or failed the system status check. This metric can be either 0 (passed)
or 1 (failed). This metric data is available in 1-minute (60 seconds)
granularity.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Count>.

=back


Valid values are: C<"CPUUtilization">, C<"NetworkIn">, C<"NetworkOut">, C<"StatusCheckFailed">, C<"StatusCheckFailed_Instance">, C<"StatusCheckFailed_System">, C<"BurstCapacityTime">, C<"BurstCapacityPercentage">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.

The C<StatusCheckFailed>, C<StatusCheckFailed_Instance>, and
C<StatusCheckFailed_System> instance metric data is available in
1-minute (60 seconds) granularity. All other instance metric data is
available in 5-minute (300 seconds) granularity.



=head2 B<REQUIRED> StartTime => Str

The start time of the time period.



=head2 B<REQUIRED> Statistics => ArrayRef[Str|Undef]

The statistic for the metric.

The following statistics are available:

=over

=item *

C<Minimum> - The lowest value observed during the specified period. Use
this value to determine low volumes of activity for your application.

=item *

C<Maximum> - The highest value observed during the specified period.
Use this value to determine high volumes of activity for your
application.

=item *

C<Sum> - All values submitted for the matching metric added together.
You can use this statistic to determine the total volume of a metric.

=item *

C<Average> - The value of Sum / SampleCount during the specified
period. By comparing this statistic with the Minimum and Maximum
values, you can determine the full scope of a metric and how close the
average use is to the Minimum and Maximum values. This comparison helps
you to know when to increase or decrease your resources.

=item *

C<SampleCount> - The count, or number, of data points used for the
statistical calculation.

=back




=head2 B<REQUIRED> Unit => Str

The unit for the metric data request. Valid units depend on the metric
data being requested. For the valid units to specify with each
available metric, see the C<metricName> parameter.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

