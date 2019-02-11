
package Paws::Connect::GetCurrentMetricData;
  use Moose;
  has CurrentMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Connect::CurrentMetric]', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::Connect::Filters', required => 1);
  has Groupings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCurrentMetricData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/current/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetCurrentMetricDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetCurrentMetricData - Arguments for method GetCurrentMetricData on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCurrentMetricData on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetCurrentMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCurrentMetricData.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetCurrentMetricDataResponse = $connect->GetCurrentMetricData(
      CurrentMetrics => [
        {
          Name => 'AGENTS_ONLINE'
          , # values: AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED; OPTIONAL
          Unit => 'SECONDS',    # values: SECONDS, COUNT, PERCENT; OPTIONAL
        },
        ...
      ],
      Filters => {
        Channels => [
          'VOICE', ...          # values: VOICE
        ],                      # max: 1; OPTIONAL
        Queues => [ 'MyQueueId', ... ],    # min: 1, max: 100; OPTIONAL
      },
      InstanceId => 'MyInstanceId',
      Groupings  => [
        'QUEUE', ...                       # values: QUEUE, CHANNEL
      ],                                   # OPTIONAL
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $DataSnapshotTime = $GetCurrentMetricDataResponse->DataSnapshotTime;
    my $MetricResults    = $GetCurrentMetricDataResponse->MetricResults;
    my $NextToken        = $GetCurrentMetricDataResponse->NextToken;

    # Returns a L<Paws::Connect::GetCurrentMetricDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetCurrentMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentMetrics => ArrayRef[L<Paws::Connect::CurrentMetric>]

A list of C<CurrentMetric> objects for the metrics to retrieve. Each
C<CurrentMetric> includes a name of a metric to retrieve and the unit
to use for it. You must list each metric to retrieve data for in the
request.

The following metrics are available:

=over

=item AGENTS_AVAILABLE

Unit: COUNT

=item AGENTS_ONLINE

Unit: COUNT

=item AGENTS_ON_CALL

Unit: COUNT

=item AGENTS_STAFFED

Unit: COUNT

=item AGENTS_AFTER_CONTACT_WORK

Unit: COUNT

=item AGENTS_NON_PRODUCTIVE

Unit: COUNT

=item AGENTS_ERROR

Unit: COUNT

=item CONTACTS_IN_QUEUE

Unit: COUNT

=item OLDEST_CONTACT_AGE

Unit: SECONDS

=item CONTACTS_SCHEDULED

Unit: COUNT

=back




=head2 B<REQUIRED> Filters => L<Paws::Connect::Filters>

A C<Filters> object that contains a list of queue IDs or queue ARNs, up
to 100, or list of Channels to use to filter the metrics returned in
the response. Metric data is retrieved only for the resources
associated with the queue IDs, ARNs, or Channels included in the
filter. You can include both IDs and ARNs in the same request. To
retrieve metrics for all queues, add the queue ID or ARN for each queue
in your instance. Only VOICE is supported for Channels.

To find the ARN for a queue, open the queue you want to use in the
Amazon Connect Queue editor. The ARN for the queue is displayed in the
address bar as part of the URL. For example, the queue ARN is the set
of characters at the end of the URL, after 'id=' such as
C<arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61>.
The queue ID is also included in the URL, and is the string after
'queue/'.



=head2 Groupings => ArrayRef[Str|Undef]

The grouping applied to the metrics returned. For example, when grouped
by QUEUE, the metrics returned apply to each queue rather than
aggregated for all queues. If you group by CHANNEL, you should include
a Channels filter. The only supported channel is VOICE.

If no C<Grouping> is included in the request, a summary of
C<CurrentMetrics> is returned.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 MaxResults => Int

C<MaxResults> indicates the maximum number of results to return per
page in the response, between 1 and 100.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the NextToken must use the same request
parameters as the request that generated the token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCurrentMetricData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

