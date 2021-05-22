
package Paws::SageMaker::ListMonitoringExecutions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitoringJobDefinitionName => (is => 'ro', isa => 'Str');
  has MonitoringScheduleName => (is => 'ro', isa => 'Str');
  has MonitoringTypeEquals => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledTimeAfter => (is => 'ro', isa => 'Str');
  has ScheduledTimeBefore => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitoringExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListMonitoringExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringExecutions - Arguments for method ListMonitoringExecutions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitoringExecutions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListMonitoringExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitoringExecutions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListMonitoringExecutionsResponse =
      $api . sagemaker->ListMonitoringExecutions(
      CreationTimeAfter           => '1970-01-01T01:00:00',           # OPTIONAL
      CreationTimeBefore          => '1970-01-01T01:00:00',           # OPTIONAL
      EndpointName                => 'MyEndpointName',                # OPTIONAL
      LastModifiedTimeAfter       => '1970-01-01T01:00:00',           # OPTIONAL
      LastModifiedTimeBefore      => '1970-01-01T01:00:00',           # OPTIONAL
      MaxResults                  => 1,                               # OPTIONAL
      MonitoringJobDefinitionName => 'MyMonitoringJobDefinitionName', # OPTIONAL
      MonitoringScheduleName      => 'MyMonitoringScheduleName',      # OPTIONAL
      MonitoringTypeEquals        => 'DataQuality',                   # OPTIONAL
      NextToken                   => 'MyNextToken',                   # OPTIONAL
      ScheduledTimeAfter          => '1970-01-01T01:00:00',           # OPTIONAL
      ScheduledTimeBefore         => '1970-01-01T01:00:00',           # OPTIONAL
      SortBy                      => 'CreationTime',                  # OPTIONAL
      SortOrder                   => 'Ascending',                     # OPTIONAL
      StatusEquals                => 'Pending',                       # OPTIONAL
      );

    # Results:
    my $MonitoringExecutionSummaries =
      $ListMonitoringExecutionsResponse->MonitoringExecutionSummaries;
    my $NextToken = $ListMonitoringExecutionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListMonitoringExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListMonitoringExecutions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only jobs created after a specified time.



=head2 CreationTimeBefore => Str

A filter that returns only jobs created before a specified time.



=head2 EndpointName => Str

Name of a specific endpoint to fetch jobs for.



=head2 LastModifiedTimeAfter => Str

A filter that returns only jobs modified before a specified time.



=head2 LastModifiedTimeBefore => Str

A filter that returns only jobs modified after a specified time.



=head2 MaxResults => Int

The maximum number of jobs to return in the response. The default value
is 10.



=head2 MonitoringJobDefinitionName => Str

Gets a list of the monitoring job runs of the specified monitoring job
definitions.



=head2 MonitoringScheduleName => Str

Name of a specific schedule to fetch jobs for.



=head2 MonitoringTypeEquals => Str

A filter that returns only the monitoring job runs of the specified
monitoring type.

Valid values are: C<"DataQuality">, C<"ModelQuality">, C<"ModelBias">, C<"ModelExplainability">

=head2 NextToken => Str

The token returned if the response is truncated. To retrieve the next
set of job executions, use it in the next request.



=head2 ScheduledTimeAfter => Str

Filter for jobs scheduled after a specified time.



=head2 ScheduledTimeBefore => Str

Filter for jobs scheduled before a specified time.



=head2 SortBy => Str

Whether to sort results by C<Status>, C<CreationTime>, C<ScheduledTime>
field. The default is C<CreationTime>.

Valid values are: C<"CreationTime">, C<"ScheduledTime">, C<"Status">

=head2 SortOrder => Str

Whether to sort the results in C<Ascending> or C<Descending> order. The
default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that retrieves only jobs with a specific status.

Valid values are: C<"Pending">, C<"Completed">, C<"CompletedWithViolations">, C<"InProgress">, C<"Failed">, C<"Stopping">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitoringExecutions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

