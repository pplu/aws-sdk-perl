
package Paws::IoT::StartDetectMitigationActionsTask;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has IncludeOnlyActiveViolations => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeOnlyActiveViolations');
  has IncludeSuppressedAlerts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeSuppressedAlerts');
  has Target => (is => 'ro', isa => 'Paws::IoT::DetectMitigationActionsTaskTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);
  has ViolationEventOccurrenceRange => (is => 'ro', isa => 'Paws::IoT::ViolationEventOccurrenceRange', traits => ['NameInRequest'], request_name => 'violationEventOccurrenceRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDetectMitigationActionsTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detect/mitigationactions/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::StartDetectMitigationActionsTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartDetectMitigationActionsTask - Arguments for method StartDetectMitigationActionsTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDetectMitigationActionsTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method StartDetectMitigationActionsTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDetectMitigationActionsTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $StartDetectMitigationActionsTaskResponse =
      $iot->StartDetectMitigationActionsTask(
      Actions => [
        'MyMitigationActionName', ...    # max: 128
      ],
      ClientRequestToken => 'MyClientRequestToken',
      Target             => {
        BehaviorName        => 'MyBehaviorName',    # min: 1, max: 128; OPTIONAL
        SecurityProfileName =>
          'MySecurityProfileName',                  # min: 1, max: 128; OPTIONAL
        ViolationIds => [
          'MyViolationId', ...                      # min: 1, max: 128
        ],    # min: 1, max: 25; OPTIONAL
      },
      TaskId                        => 'MyMitigationActionsTaskId',
      IncludeOnlyActiveViolations   => 1,                             # OPTIONAL
      IncludeSuppressedAlerts       => 1,                             # OPTIONAL
      ViolationEventOccurrenceRange => {
        EndTime   => '1970-01-01T01:00:00',
        StartTime => '1970-01-01T01:00:00',

      },                                                              # OPTIONAL
      );

    # Results:
    my $TaskId = $StartDetectMitigationActionsTaskResponse->TaskId;

    # Returns a L<Paws::IoT::StartDetectMitigationActionsTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/StartDetectMitigationActionsTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

The actions to be performed when a device has unexpected behavior.



=head2 B<REQUIRED> ClientRequestToken => Str

Each mitigation action task must have a unique client request token. If
you try to create a new task with the same token as a task that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 IncludeOnlyActiveViolations => Bool

Specifies to list only active violations.



=head2 IncludeSuppressedAlerts => Bool

Specifies to include suppressed alerts.



=head2 B<REQUIRED> Target => L<Paws::IoT::DetectMitigationActionsTaskTarget>

Specifies the ML Detect findings to which the mitigation actions are
applied.



=head2 B<REQUIRED> TaskId => Str

The unique identifier of the task.



=head2 ViolationEventOccurrenceRange => L<Paws::IoT::ViolationEventOccurrenceRange>

Specifies the time period of which violation events occurred between.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDetectMitigationActionsTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

