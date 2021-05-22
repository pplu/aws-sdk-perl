
package Paws::Lightsail::GetContainerServiceMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContainerServiceMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetContainerServiceMetricDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerServiceMetricData - Arguments for method GetContainerServiceMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContainerServiceMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetContainerServiceMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContainerServiceMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetContainerServiceMetricDataResult =
      $lightsail->GetContainerServiceMetricData(
      EndTime     => '1970-01-01T01:00:00',
      MetricName  => 'CPUUtilization',
      Period      => 1,
      ServiceName => 'MyContainerServiceName',
      StartTime   => '1970-01-01T01:00:00',
      Statistics  => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],

      );

    # Results:
    my $MetricData = $GetContainerServiceMetricDataResult->MetricData;
    my $MetricName = $GetContainerServiceMetricDataResult->MetricName;

    # Returns a L<Paws::Lightsail::GetContainerServiceMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetContainerServiceMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the time period.



=head2 B<REQUIRED> MetricName => Str

The metric for which you want to return information.

Valid container service metric names are listed below, along with the
most useful statistics to include in your request, and the published
unit value.

=over

=item *

C<CPUUtilization> - The average percentage of compute units that are
currently in use across all nodes of the container service. This metric
identifies the processing power required to run containers on each node
of the container service.

Statistics: The most useful statistics are C<Maximum> and C<Average>.

Unit: The published unit is C<Percent>.

=item *

C<MemoryUtilization> - The average percentage of available memory that
is currently in use across all nodes of the container service. This
metric identifies the memory required to run containers on each node of
the container service.

Statistics: The most useful statistics are C<Maximum> and C<Average>.

Unit: The published unit is C<Percent>.

=back


Valid values are: C<"CPUUtilization">, C<"MemoryUtilization">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.

All container service metric data is available in 5-minute (300
seconds) granularity.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service for which to get metric data.



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

C<Average> - The value of C<Sum> / C<SampleCount> during the specified
period. By comparing this statistic with the C<Minimum> and C<Maximum>
values, you can determine the full scope of a metric and how close the
average use is to the C<Minimum> and C<Maximum> values. This comparison
helps you to know when to increase or decrease your resources.

=item *

C<SampleCount> - The count, or number, of data points used for the
statistical calculation.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContainerServiceMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

