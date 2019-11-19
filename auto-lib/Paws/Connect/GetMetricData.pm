
package Paws::Connect::GetMetricData;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::Connect::Types qw/Connect_HistoricalMetric Connect_Filters/;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => Connect_Filters, required => 1, predicate => 1);
  has Groupings => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has HistoricalMetrics => (is => 'ro', isa => ArrayRef[Connect_HistoricalMetric], required => 1, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMetricData');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/metrics/historical/{InstanceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::GetMetricDataResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Filters' => {
                              'class' => 'Paws::Connect::Filters',
                              'type' => 'Connect_Filters'
                            },
               'Groupings' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'HistoricalMetrics' => {
                                        'type' => 'ArrayRef[Connect_HistoricalMetric]',
                                        'class' => 'Paws::Connect::HistoricalMetric'
                                      }
             },
  'IsRequired' => {
                    'EndTime' => 1,
                    'StartTime' => 1,
                    'InstanceId' => 1,
                    'HistoricalMetrics' => 1,
                    'Filters' => 1
                  },
  'ParamInURI' => {
                    'InstanceId' => 'InstanceId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetMetricData - Arguments for method GetMetricData on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricData on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricData.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetMetricDataResponse = $connect->GetMetricData(
      EndTime => '1970-01-01T01:00:00',
      Filters => {
        Channels => [
          'VOICE', ...    # values: VOICE
        ],                # max: 1; OPTIONAL
        Queues => [ 'MyQueueId', ... ],    # min: 1, max: 100; OPTIONAL
      },
      HistoricalMetrics => [
        {
          Name => 'CONTACTS_QUEUED'
          , # values: CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL; OPTIONAL
          Statistic => 'SUM',    # values: SUM, MAX, AVG; OPTIONAL
          Threshold => {
            Comparison     => 'LT',    # values: LT; OPTIONAL
            ThresholdValue => 1,       # OPTIONAL
          },    # OPTIONAL
          Unit => 'SECONDS',    # values: SECONDS, COUNT, PERCENT; OPTIONAL
        },
        ...
      ],
      InstanceId => 'MyInstanceId',
      StartTime  => '1970-01-01T01:00:00',
      Groupings  => [
        'QUEUE',
        ...                     # values: QUEUE, CHANNEL
      ],                        # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $MetricResults = $GetMetricDataResponse->MetricResults;
    my $NextToken     = $GetMetricDataResponse->NextToken;

    # Returns a L<Paws::Connect::GetMetricDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The timestamp, in UNIX Epoch time format, at which to end the reporting
interval for the retrieval of historical metrics data. The time must be
specified using an interval of 5 minutes, such as 11:00, 11:05, 11:10,
and must be later than the start time timestamp.

The time range between the start and end time must be less than 24
hours.



=head2 B<REQUIRED> Filters => Connect_Filters

The queues, up to 100, or channels, to use to filter the metrics
returned. Metric data is retrieved only for the resources associated
with the queues or channels included in the filter. You can include
both queue IDs and queue ARNs in the same request. The only supported
channel is C<VOICE>.



=head2 Groupings => ArrayRef[Str|Undef]

The grouping applied to the metrics returned. For example, when results
are grouped by queue, the metrics returned are grouped by queue. The
values returned apply to the metrics for each queue rather than
aggregated for all queues.

The only supported grouping is C<QUEUE>.

If no grouping is specified, a summary of metrics for all queues is
returned.



=head2 B<REQUIRED> HistoricalMetrics => ArrayRef[Connect_HistoricalMetric]

The metrics to retrieve. Specify the name, unit, and statistic for each
metric. The following historical metrics are available:

=over

=item ABANDON_TIME

Unit: SECONDS

Statistic: AVG

=item AFTER_CONTACT_WORK_TIME

Unit: SECONDS

Statistic: AVG

=item API_CONTACTS_HANDLED

Unit: COUNT

Statistic: SUM

=item CALLBACK_CONTACTS_HANDLED

Unit: COUNT

Statistic: SUM

=item CONTACTS_ABANDONED

Unit: COUNT

Statistic: SUM

=item CONTACTS_AGENT_HUNG_UP_FIRST

Unit: COUNT

Statistic: SUM

=item CONTACTS_CONSULTED

Unit: COUNT

Statistic: SUM

=item CONTACTS_HANDLED

Unit: COUNT

Statistic: SUM

=item CONTACTS_HANDLED_INCOMING

Unit: COUNT

Statistic: SUM

=item CONTACTS_HANDLED_OUTBOUND

Unit: COUNT

Statistic: SUM

=item CONTACTS_HOLD_ABANDONS

Unit: COUNT

Statistic: SUM

=item CONTACTS_MISSED

Unit: COUNT

Statistic: SUM

=item CONTACTS_QUEUED

Unit: COUNT

Statistic: SUM

=item CONTACTS_TRANSFERRED_IN

Unit: COUNT

Statistic: SUM

=item CONTACTS_TRANSFERRED_IN_FROM_QUEUE

Unit: COUNT

Statistic: SUM

=item CONTACTS_TRANSFERRED_OUT

Unit: COUNT

Statistic: SUM

=item CONTACTS_TRANSFERRED_OUT_FROM_QUEUE

Unit: COUNT

Statistic: SUM

=item HANDLE_TIME

Unit: SECONDS

Statistic: AVG

=item HOLD_TIME

Unit: SECONDS

Statistic: AVG

=item INTERACTION_AND_HOLD_TIME

Unit: SECONDS

Statistic: AVG

=item INTERACTION_TIME

Unit: SECONDS

Statistic: AVG

=item OCCUPANCY

Unit: PERCENT

Statistic: AVG

=item QUEUE_ANSWER_TIME

Unit: SECONDS

Statistic: AVG

=item QUEUED_TIME

Unit: SECONDS

Statistic: MAX

=item SERVICE_LEVEL

Unit: PERCENT

Statistic: AVG

Threshold: Only "Less than" comparisons are supported, with the
following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120,
180, 240, 300, 600

=back




=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximimum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> StartTime => Str

The timestamp, in UNIX Epoch time format, at which to start the
reporting interval for the retrieval of historical metrics data. The
time must be specified using a multiple of 5 minutes, such as 10:05,
10:10, 10:15.

The start time cannot be earlier than 24 hours before the time of the
request. Historical metrics are available only for 24 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

