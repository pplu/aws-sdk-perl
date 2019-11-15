
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

The metrics to retrieve. Specify the name and unit for each metric. The
following metrics are available:

=over

=item AGENTS_AFTER_CONTACT_WORK

Unit: COUNT

=item AGENTS_AVAILABLE

Unit: COUNT

=item AGENTS_ERROR

Unit: COUNT

=item AGENTS_NON_PRODUCTIVE

Unit: COUNT

=item AGENTS_ON_CALL

Unit: COUNT

=item AGENTS_ONLINE

Unit: COUNT

=item AGENTS_STAFFED

Unit: COUNT

=item CONTACTS_IN_QUEUE

Unit: COUNT

=item CONTACTS_SCHEDULED

Unit: COUNT

=item OLDEST_CONTACT_AGE

Unit: SECONDS

=back




=head2 B<REQUIRED> Filters => L<Paws::Connect::Filters>

The queues, up to 100, or channels, to use to filter the metrics
returned. Metric data is retrieved only for the resources associated
with the queues or channels included in the filter. You can include
both queue IDs and queue ARNs in the same request. The only supported
channel is C<VOICE>.



=head2 Groupings => ArrayRef[Str|Undef]

The grouping applied to the metrics returned. For example, when grouped
by C<QUEUE>, the metrics returned apply to each queue rather than
aggregated for all queues. If you group by C<CHANNEL>, you should
include a Channels filter. The only supported channel is C<VOICE>.

If no C<Grouping> is included in the request, a summary of metrics is
returned.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximimum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.

The token expires after 5 minutes from the time it is created.
Subsequent requests that use the token must use the same request
parameters as the request that generated the token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCurrentMetricData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

