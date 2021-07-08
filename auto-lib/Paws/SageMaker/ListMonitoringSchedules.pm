
package Paws::SageMaker::ListMonitoringSchedules;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitoringJobDefinitionName => (is => 'ro', isa => 'Str');
  has MonitoringTypeEquals => (is => 'ro', isa => 'Str');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitoringSchedules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListMonitoringSchedulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringSchedules - Arguments for method ListMonitoringSchedules on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitoringSchedules on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListMonitoringSchedules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitoringSchedules.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListMonitoringSchedulesResponse =
      $api . sagemaker->ListMonitoringSchedules(
      CreationTimeAfter           => '1970-01-01T01:00:00',           # OPTIONAL
      CreationTimeBefore          => '1970-01-01T01:00:00',           # OPTIONAL
      EndpointName                => 'MyEndpointName',                # OPTIONAL
      LastModifiedTimeAfter       => '1970-01-01T01:00:00',           # OPTIONAL
      LastModifiedTimeBefore      => '1970-01-01T01:00:00',           # OPTIONAL
      MaxResults                  => 1,                               # OPTIONAL
      MonitoringJobDefinitionName => 'MyMonitoringJobDefinitionName', # OPTIONAL
      MonitoringTypeEquals        => 'DataQuality',                   # OPTIONAL
      NameContains                => 'MyNameContains',                # OPTIONAL
      NextToken                   => 'MyNextToken',                   # OPTIONAL
      SortBy                      => 'Name',                          # OPTIONAL
      SortOrder                   => 'Ascending',                     # OPTIONAL
      StatusEquals                => 'Pending',                       # OPTIONAL
      );

    # Results:
    my $MonitoringScheduleSummaries =
      $ListMonitoringSchedulesResponse->MonitoringScheduleSummaries;
    my $NextToken = $ListMonitoringSchedulesResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListMonitoringSchedulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListMonitoringSchedules>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only monitoring schedules created after a
specified time.



=head2 CreationTimeBefore => Str

A filter that returns only monitoring schedules created before a
specified time.



=head2 EndpointName => Str

Name of a specific endpoint to fetch schedules for.



=head2 LastModifiedTimeAfter => Str

A filter that returns only monitoring schedules modified after a
specified time.



=head2 LastModifiedTimeBefore => Str

A filter that returns only monitoring schedules modified before a
specified time.



=head2 MaxResults => Int

The maximum number of jobs to return in the response. The default value
is 10.



=head2 MonitoringJobDefinitionName => Str

Gets a list of the monitoring schedules for the specified monitoring
job definition.



=head2 MonitoringTypeEquals => Str

A filter that returns only the monitoring schedules for the specified
monitoring type.

Valid values are: C<"DataQuality">, C<"ModelQuality">, C<"ModelBias">, C<"ModelExplainability">

=head2 NameContains => Str

Filter for monitoring schedules whose name contains a specified string.



=head2 NextToken => Str

The token returned if the response is truncated. To retrieve the next
set of job executions, use it in the next request.



=head2 SortBy => Str

Whether to sort results by C<Status>, C<CreationTime>, C<ScheduledTime>
field. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

Whether to sort the results in C<Ascending> or C<Descending> order. The
default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that returns only monitoring schedules modified before a
specified time.

Valid values are: C<"Pending">, C<"Failed">, C<"Scheduled">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitoringSchedules in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

