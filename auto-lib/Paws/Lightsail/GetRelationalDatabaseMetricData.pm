# Generated from json/callargs_class.tt

package Paws::Lightsail::GetRelationalDatabaseMetricData;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Lightsail::Types qw//;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MetricName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Period => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has RelationalDatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Statistics => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Unit => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetRelationalDatabaseMetricData');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseMetricDataResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Period' => 1,
                    'Statistics' => 1,
                    'Unit' => 1,
                    'MetricName' => 1,
                    'EndTime' => 1,
                    'RelationalDatabaseName' => 1,
                    'StartTime' => 1
                  },
  'NameInRequest' => {
                       'Unit' => 'unit',
                       'Statistics' => 'statistics',
                       'Period' => 'period',
                       'StartTime' => 'startTime',
                       'RelationalDatabaseName' => 'relationalDatabaseName',
                       'EndTime' => 'endTime',
                       'MetricName' => 'metricName'
                     },
  'types' => {
               'Unit' => {
                           'type' => 'Str'
                         },
               'Period' => {
                             'type' => 'Int'
                           },
               'Statistics' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'RelationalDatabaseName' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }

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

The name of the metric data to return.

Valid values are: C<"CPUUtilization">, C<"DatabaseConnections">, C<"DiskQueueDepth">, C<"FreeStorageSpace">, C<"NetworkReceiveThroughput">, C<"NetworkTransmitThroughput">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.



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

The array of statistics for your metric data request.



=head2 B<REQUIRED> Unit => Str

The unit for the metric data request.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

