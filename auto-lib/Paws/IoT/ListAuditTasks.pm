
package Paws::IoT::ListAuditTasks;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime', required => 1);
  has TaskStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskStatus');
  has TaskType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAuditTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListAuditTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditTasks - Arguments for method ListAuditTasks on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuditTasks on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuditTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuditTasks.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuditTasksResponse = $iot->ListAuditTasks(
      EndTime    => '1970-01-01T01:00:00',
      StartTime  => '1970-01-01T01:00:00',
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyNextToken',             # OPTIONAL
      TaskStatus => 'IN_PROGRESS',             # OPTIONAL
      TaskType   => 'ON_DEMAND_AUDIT_TASK',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListAuditTasksResponse->NextToken;
    my $Tasks     = $ListAuditTasksResponse->Tasks;

    # Returns a L<Paws::IoT::ListAuditTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuditTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time period.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> StartTime => Str

The beginning of the time period. Note that audit information is
retained for a limited time (180 days). Requesting a start time prior
to what is retained results in an "InvalidRequestException".



=head2 TaskStatus => Str

A filter to limit the output to audits with the specified completion
status: can be one of "IN_PROGRESS", "COMPLETED", "FAILED" or
"CANCELED".

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">

=head2 TaskType => Str

A filter to limit the output to the specified type of audit: can be one
of "ON_DEMAND_AUDIT_TASK" or "SCHEDULED__AUDIT_TASK".

Valid values are: C<"ON_DEMAND_AUDIT_TASK">, C<"SCHEDULED_AUDIT_TASK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuditTasks in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

