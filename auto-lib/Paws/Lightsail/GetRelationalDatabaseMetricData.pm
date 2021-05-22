
package Paws::Lightsail::GetRelationalDatabaseMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics' , required => 1);
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabaseMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseMetricDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMetricData - Arguments for method GetRelationalDatabaseMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseMetricDataResult =
      $lightsail->GetRelationalDatabaseMetricData(
      EndTime                => '1970-01-01T01:00:00',
      MetricName             => 'CPUUtilization',
      Period                 => 1,
      RelationalDatabaseName => 'MyResourceName',
      StartTime              => '1970-01-01T01:00:00',
      Statistics             => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],
      Unit => 'Seconds',

      );

    # Results:
    my $MetricData = $GetRelationalDatabaseMetricDataResult->MetricData;
    my $MetricName = $GetRelationalDatabaseMetricDataResult->MetricName;

   # Returns a L<Paws::Lightsail::GetRelationalDatabaseMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time interval from which to get metric data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use an end time of October 1, 2018, at 8 PM
UTC, then you input C<1538424000> as the end time.

=back




=head2 B<REQUIRED> MetricName => Str

The metric for which you want to return information.

Valid relational database metric names are listed below, along with the
most useful C<statistics> to include in your request, and the published
C<unit> value. All relational database metric data is available in
1-minute (60 seconds) granularity.

=over

=item *

B<C<CPUUtilization> > - The percentage of CPU utilization currently in
use on the database.

C<Statistics>: The most useful statistics are C<Maximum> and
C<Average>.

C<Unit>: The published unit is C<Percent>.

=item *

B<C<DatabaseConnections> > - The number of database connections in use.

C<Statistics>: The most useful statistics are C<Maximum> and C<Sum>.

C<Unit>: The published unit is C<Count>.

=item *

B<C<DiskQueueDepth> > - The number of outstanding IOs (read/write
requests) that are waiting to access the disk.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Count>.

=item *

B<C<FreeStorageSpace> > - The amount of available storage space.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<Bytes>.

=item *

B<C<NetworkReceiveThroughput> > - The incoming (Receive) network
traffic on the database, including both customer database traffic and
AWS traffic used for monitoring and replication.

C<Statistics>: The most useful statistic is C<Average>.

C<Unit>: The published unit is C<Bytes/Second>.

=item *

B<C<NetworkTransmitThroughput> > - The outgoing (Transmit) network
traffic on the database, including both customer database traffic and
AWS traffic used for monitoring and replication.

C<Statistics>: The most useful statistic is C<Average>.

C<Unit>: The published unit is C<Bytes/Second>.

=back


Valid values are: C<"CPUUtilization">, C<"DatabaseConnections">, C<"DiskQueueDepth">, C<"FreeStorageSpace">, C<"NetworkReceiveThroughput">, C<"NetworkTransmitThroughput">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.

All relational database metric data is available in 1-minute (60
seconds) granularity.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database from which to get metric data.



=head2 B<REQUIRED> StartTime => Str

The start of the time interval from which to get metric data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, then you input C<1538424000> as the start time.

=back




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
data being requested. For the valid units with each available metric,
see the C<metricName> parameter.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

