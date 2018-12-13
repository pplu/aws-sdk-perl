
package Paws::Connect::GetMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Connect::Filters', required => 1);
  has Groupings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HistoricalMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HistoricalMetric]', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/historical/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetMetricDataResponse');
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
and must be later than the C<StartTime> timestamp.

The time range between C<StartTime> and C<EndTime> must be less than 24
hours.



=head2 B<REQUIRED> Filters => L<Paws::Connect::Filters>

A C<Filters> object that contains a list of queue IDs or queue ARNs, up
to 100, or a list of Channels to use to filter the metrics returned in
the response. Metric data is retrieved only for the resources
associated with the IDs, ARNs, or Channels included in the filter. You
can use both IDs and ARNs together in a request. Only VOICE is
supported for Channel.

To find the ARN for a queue, open the queue you want to use in the
Amazon Connect Queue editor. The ARN for the queue is displayed in the
address bar as part of the URL. For example, the queue ARN is the set
of characters at the end of the URL, after 'id=' such as
C<arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61>.
The queue ID is also included in the URL, and is the string after
'queue/'.



=head2 Groupings => ArrayRef[Str|Undef]

The grouping applied to the metrics returned. For example, when results
are grouped by queueId, the metrics returned are grouped by queue. The
values returned apply to the metrics for each queue rather than
aggregated for all queues.

The current version supports grouping by Queue

If no C<Grouping> is included in the request, a summary of
C<HistoricalMetrics> for all queues is returned.



=head2 B<REQUIRED> HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>]

A list of C<HistoricalMetric> objects that contain the metrics to
retrieve with the request.

A C<HistoricalMetric> object contains: C<HistoricalMetricName>,
C<Statistic>, C<Threshold>, and C<Unit>.

You must list each metric to retrieve data for in the request. For each
historical metric you include in the request, you must include a
C<Unit> and a C<Statistic>.

The following historical metrics are available:

=over

=item CONTACTS_QUEUED

Unit: COUNT

Statistic: SUM

=item CONTACTS_HANDLED

Unit: COUNT

Statistics: SUM

=item CONTACTS_ABANDONED

Unit: COUNT

Statistics: SUM

=item CONTACTS_CONSULTED

Unit: COUNT

Statistics: SUM

=item CONTACTS_AGENT_HUNG_UP_FIRST

Unit: COUNT

Statistics: SUM

=item CONTACTS_HANDLED_INCOMING

Unit: COUNT

Statistics: SUM

=item CONTACTS_HANDLED_OUTBOUND

Unit: COUNT

Statistics: SUM

=item CONTACTS_HOLD_ABANDONS

Unit: COUNT

Statistics: SUM

=item CONTACTS_TRANSFERRED_IN

Unit: COUNT

Statistics: SUM

=item CONTACTS_TRANSFERRED_OUT

Unit: COUNT

Statistics: SUM

=item CONTACTS_TRANSFERRED_IN_FROM_QUEUE

Unit: COUNT

Statistics: SUM

=item CONTACTS_TRANSFERRED_OUT_FROM_QUEUE

Unit: COUNT

Statistics: SUM

=item CALLBACK_CONTACTS_HANDLED

Unit: COUNT

Statistics: SUM

=item CALLBACK_CONTACTS_HANDLED

Unit: COUNT

Statistics: SUM

=item API_CONTACTS_HANDLED

Unit: COUNT

Statistics: SUM

=item CONTACTS_MISSED

Unit: COUNT

Statistics: SUM

=item OCCUPANCY

Unit: PERCENT

Statistics: AVG

=item HANDLE_TIME

Unit: SECONDS

Statistics: AVG

=item AFTER_CONTACT_WORK_TIME

Unit: SECONDS

Statistics: AVG

=item QUEUED_TIME

Unit: SECONDS

Statistics: MAX

=item ABANDON_TIME

Unit: COUNT

Statistics: SUM

=item QUEUE_ANSWER_TIME

Unit: SECONDS

Statistics: AVG

=item HOLD_TIME

Unit: SECONDS

Statistics: AVG

=item INTERACTION_TIME

Unit: SECONDS

Statistics: AVG

=item INTERACTION_AND_HOLD_TIME

Unit: SECONDS

Statistics: AVG

=item SERVICE_LEVEL

Unit: PERCENT

Statistics: AVG

Threshold: Only "Less than" comparisons are supported, with the
following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120,
180, 240, 300, 600

=back




=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 MaxResults => Int

Indicates the maximum number of results to return per page in the
response, between 1-100.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> StartTime => Str

The timestamp, in UNIX Epoch time format, at which to start the
reporting interval for the retrieval of historical metrics data. The
time must be specified using a multiple of 5 minutes, such as 10:05,
10:10, 10:15.

C<StartTime> cannot be earlier than 24 hours before the time of the
request. Historical metrics are available in Amazon Connect only for 24
hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

