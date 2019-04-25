
package Paws::CloudWatch::GetMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxDatapoints => (is => 'ro', isa => 'Int');
  has MetricDataQueries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataQuery]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ScanBy => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetMetricDataOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricDataResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricData - Arguments for method GetMetricData on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricData on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricData.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetMetricDataOutput = $monitoring->GetMetricData(
      EndTime           => '1970-01-01T01:00:00',
      MetricDataQueries => [
        {
          Id         => 'MyMetricId',            # min: 1, max: 255
          Expression => 'MyMetricExpression',    # min: 1, max: 1024; OPTIONAL
          Label      => 'MyMetricLabel',         # OPTIONAL
          MetricStat => {
            Metric => {
              Dimensions => [
                {
                  Name  => 'MyDimensionName',     # min: 1, max: 255
                  Value => 'MyDimensionValue',    # min: 1, max: 255

                },
                ...
              ],                                  # max: 10; OPTIONAL
              MetricName => 'MyMetricName',       # min: 1, max: 255; OPTIONAL
              Namespace  => 'MyNamespace',        # min: 1, max: 255; OPTIONAL
            },
            Period => 1,                          # min: 1
            Stat   => 'MyStat',
            Unit   => 'Seconds'
            , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
          },    # OPTIONAL
          ReturnData => 1,    # OPTIONAL
        },
        ...
      ],
      StartTime     => '1970-01-01T01:00:00',
      MaxDatapoints => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      ScanBy        => 'TimestampDescending',    # OPTIONAL
    );

    # Results:
    my $MetricDataResults = $GetMetricDataOutput->MetricDataResults;
    my $NextToken         = $GetMetricDataOutput->NextToken;

    # Returns a L<Paws::CloudWatch::GetMetricDataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The time stamp indicating the latest data to be returned.

For better performance, specify C<StartTime> and C<EndTime> values that
align with the value of the metric's C<Period> and sync up with the
beginning and end of an hour. For example, if the C<Period> of a metric
is 5 minutes, specifying 12:05 or 12:30 as C<EndTime> can get a faster
response from CloudWatch then setting 12:07 or 12:29 as the C<EndTime>.



=head2 MaxDatapoints => Int

The maximum number of data points the request should return before
paginating. If you omit this, the default of 100,800 is used.



=head2 B<REQUIRED> MetricDataQueries => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]

The metric queries to be returned. A single C<GetMetricData> call can
include as many as 100 C<MetricDataQuery> structures. Each of these
structures can specify either a metric to retrieve, or a math
expression to perform on retrieved data.



=head2 NextToken => Str

Include this value, if it was returned by the previous call, to get the
next set of data points.



=head2 ScanBy => Str

The order in which data points should be returned.
C<TimestampDescending> returns the newest data first and paginates when
the C<MaxDatapoints> limit is reached. C<TimestampAscending> returns
the oldest data first and paginates when the C<MaxDatapoints> limit is
reached.

Valid values are: C<"TimestampDescending">, C<"TimestampAscending">

=head2 B<REQUIRED> StartTime => Str

The time stamp indicating the earliest data to be returned.

For better performance, specify C<StartTime> and C<EndTime> values that
align with the value of the metric's C<Period> and sync up with the
beginning and end of an hour. For example, if the C<Period> of a metric
is 5 minutes, specifying 12:05 or 12:30 as C<StartTime> can get a
faster response from CloudWatch then setting 12:07 or 12:29 as the
C<StartTime>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricData in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

