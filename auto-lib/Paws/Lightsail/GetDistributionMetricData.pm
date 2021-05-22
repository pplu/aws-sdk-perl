
package Paws::Lightsail::GetDistributionMetricData;
  use Moose;
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' , required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has Period => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'period' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);
  has Statistics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statistics' , required => 1);
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDistributionMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetDistributionMetricDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDistributionMetricData - Arguments for method GetDistributionMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDistributionMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetDistributionMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDistributionMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetDistributionMetricDataResult = $lightsail->GetDistributionMetricData(
      DistributionName => 'MyResourceName',
      EndTime          => '1970-01-01T01:00:00',
      MetricName       => 'Requests',
      Period           => 1,
      StartTime        => '1970-01-01T01:00:00',
      Statistics       => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],
      Unit => 'Seconds',

    );

    # Results:
    my $MetricData = $GetDistributionMetricDataResult->MetricData;
    my $MetricName = $GetDistributionMetricDataResult->MetricName;

    # Returns a L<Paws::Lightsail::GetDistributionMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetDistributionMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionName => Str

The name of the distribution for which to get metric data.

Use the C<GetDistributions> action to get a list of distribution names
that you can specify.



=head2 B<REQUIRED> EndTime => Str

The end of the time interval for which to get metric data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use an end time of October 1, 2018, at 9 PM
UTC, specify C<1538427600> as the end time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).



=head2 B<REQUIRED> MetricName => Str

The metric for which you want to return information.

Valid distribution metric names are listed below, along with the most
useful C<statistics> to include in your request, and the published
C<unit> value.

=over

=item *

B<C<Requests> > - The total number of viewer requests received by your
Lightsail distribution, for all HTTP methods, and for both HTTP and
HTTPS requests.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<None>.

=item *

B<C<BytesDownloaded> > - The number of bytes downloaded by viewers for
GET, HEAD, and OPTIONS requests.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<None>.

=item *

B<C<BytesUploaded > > - The number of bytes uploaded to your origin by
your Lightsail distribution, using POST and PUT requests.

C<Statistics>: The most useful statistic is C<Sum>.

C<Unit>: The published unit is C<None>.

=item *

B<C<TotalErrorRate> > - The percentage of all viewer requests for which
the response's HTTP status code was 4xx or 5xx.

C<Statistics>: The most useful statistic is C<Average>.

C<Unit>: The published unit is C<Percent>.

=item *

B<C<4xxErrorRate> > - The percentage of all viewer requests for which
the response's HTTP status cod was 4xx. In these cases, the client or
client viewer may have made an error. For example, a status code of 404
(Not Found) means that the client requested an object that could not be
found.

C<Statistics>: The most useful statistic is C<Average>.

C<Unit>: The published unit is C<Percent>.

=item *

B<C<5xxErrorRate> > - The percentage of all viewer requests for which
the response's HTTP status code was 5xx. In these cases, the origin
server did not satisfy the requests. For example, a status code of 503
(Service Unavailable) means that the origin server is currently
unavailable.

C<Statistics>: The most useful statistic is C<Average>.

C<Unit>: The published unit is C<Percent>.

=back


Valid values are: C<"Requests">, C<"BytesDownloaded">, C<"BytesUploaded">, C<"TotalErrorRate">, C<"Http4xxErrorRate">, C<"Http5xxErrorRate">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, for the metric data points that will be
returned.



=head2 B<REQUIRED> StartTime => Str

The start of the time interval for which to get metric data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, specify C<1538424000> as the start time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).



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

The unit for the metric data request.

Valid units depend on the metric data being requested. For the valid
units with each available metric, see the C<metricName> parameter.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDistributionMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

