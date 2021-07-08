
package Paws::IoT::ListDetectMitigationActionsExecutions;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskId');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingName');
  has ViolationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'violationId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDetectMitigationActionsExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detect/mitigationactions/executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListDetectMitigationActionsExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDetectMitigationActionsExecutions - Arguments for method ListDetectMitigationActionsExecutions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDetectMitigationActionsExecutions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListDetectMitigationActionsExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDetectMitigationActionsExecutions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListDetectMitigationActionsExecutionsResponse =
      $iot->ListDetectMitigationActionsExecutions(
      EndTime     => '1970-01-01T01:00:00',          # OPTIONAL
      MaxResults  => 1,                              # OPTIONAL
      NextToken   => 'MyNextToken',                  # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',          # OPTIONAL
      TaskId      => 'MyMitigationActionsTaskId',    # OPTIONAL
      ThingName   => 'MyDeviceDefenderThingName',    # OPTIONAL
      ViolationId => 'MyViolationId',                # OPTIONAL
      );

    # Results:
    my $ActionsExecutions =
      $ListDetectMitigationActionsExecutionsResponse->ActionsExecutions;
    my $NextToken = $ListDetectMitigationActionsExecutionsResponse->NextToken;

 # Returns a L<Paws::IoT::ListDetectMitigationActionsExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListDetectMitigationActionsExecutions>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end of the time period for which ML Detect mitigation actions
executions are returned.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 StartTime => Str

A filter to limit results to those found after the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.



=head2 TaskId => Str

The unique identifier of the task.



=head2 ThingName => Str

The name of the thing whose mitigation actions are listed.



=head2 ViolationId => Str

The unique identifier of the violation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDetectMitigationActionsExecutions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

