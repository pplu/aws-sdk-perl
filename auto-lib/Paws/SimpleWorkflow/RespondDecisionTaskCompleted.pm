
package Paws::SimpleWorkflow::RespondDecisionTaskCompleted;
  use Moose;
  has Decisions => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::Decision]', traits => ['NameInRequest'], request_name => 'decisions' );
  has ExecutionContext => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionContext' );
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskToken' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RespondDecisionTaskCompleted - Arguments for method RespondDecisionTaskCompleted on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RespondDecisionTaskCompleted on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method RespondDecisionTaskCompleted.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RespondDecisionTaskCompleted.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->RespondDecisionTaskCompleted(
      TaskToken => 'MyTaskToken',
      Decisions => [
        {
          DecisionType => 'ScheduleActivityTask'
          , # values: ScheduleActivityTask, RequestCancelActivityTask, CompleteWorkflowExecution, FailWorkflowExecution, CancelWorkflowExecution, ContinueAsNewWorkflowExecution, RecordMarker, StartTimer, CancelTimer, SignalExternalWorkflowExecution, RequestCancelExternalWorkflowExecution, StartChildWorkflowExecution, ScheduleLambdaFunction
          CancelTimerDecisionAttributes => {
            TimerId => 'MyTimerId',    # min: 1, max: 256

          },    # OPTIONAL
          CancelWorkflowExecutionDecisionAttributes => {
            Details => 'MyData',    # max: 32768; OPTIONAL
          },    # OPTIONAL
          CompleteWorkflowExecutionDecisionAttributes => {
            Result => 'MyData',    # max: 32768; OPTIONAL
          },    # OPTIONAL
          ContinueAsNewWorkflowExecutionDecisionAttributes => {
            ChildPolicy => 'TERMINATE'
            ,    # values: TERMINATE, REQUEST_CANCEL, ABANDON; OPTIONAL
            ExecutionStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            Input      => 'MyData',             # max: 32768; OPTIONAL
            LambdaRole => 'MyArn',              # min: 1, max: 1600; OPTIONAL
            TagList    => [
              'MyTag', ...                      # max: 256
            ],                                  # max: 5; OPTIONAL
            TaskList => {
              Name => 'MyName',                 # min: 1, max: 256

            },    # OPTIONAL
            TaskPriority => 'MyTaskPriority',    # OPTIONAL
            TaskStartToCloseTimeout =>
              'MyDurationInSecondsOptional',     # max: 8; OPTIONAL
            WorkflowTypeVersion => 'MyVersion',  # min: 1, max: 64
          },    # OPTIONAL
          FailWorkflowExecutionDecisionAttributes => {
            Details => 'MyData',             # max: 32768; OPTIONAL
            Reason  => 'MyFailureReason',    # max: 256; OPTIONAL
          },    # OPTIONAL
          RecordMarkerDecisionAttributes => {
            MarkerName => 'MyMarkerName',    # min: 1, max: 256
            Details    => 'MyData',          # max: 32768; OPTIONAL
          },    # OPTIONAL
          RequestCancelActivityTaskDecisionAttributes => {
            ActivityId => 'MyActivityId',    # min: 1, max: 256

          },    # OPTIONAL
          RequestCancelExternalWorkflowExecutionDecisionAttributes => {
            WorkflowId => 'MyWorkflowId',               # min: 1, max: 256
            Control    => 'MyData',                     # max: 32768; OPTIONAL
            RunId      => 'MyWorkflowRunIdOptional',    # max: 64; OPTIONAL
          },    # OPTIONAL
          ScheduleActivityTaskDecisionAttributes => {
            ActivityId   => 'MyActivityId',    # min: 1, max: 256
            ActivityType => {
              Name    => 'MyName',             # min: 1, max: 256
              Version => 'MyVersion',          # min: 1, max: 64

            },
            Control => 'MyData',               # max: 32768; OPTIONAL
            HeartbeatTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            Input => 'MyData',                  # max: 32768; OPTIONAL
            ScheduleToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            ScheduleToStartTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            StartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            TaskList => {
              Name => 'MyName',                 # min: 1, max: 256

            },    # OPTIONAL
            TaskPriority => 'MyTaskPriority',    # OPTIONAL
          },    # OPTIONAL
          ScheduleLambdaFunctionDecisionAttributes => {
            Id      => 'MyFunctionId',       # min: 1, max: 256
            Name    => 'MyFunctionName',     # min: 1, max: 64
            Control => 'MyData',             # max: 32768; OPTIONAL
            Input   => 'MyFunctionInput',    # max: 32768; OPTIONAL
            StartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
          },    # OPTIONAL
          SignalExternalWorkflowExecutionDecisionAttributes => {
            SignalName => 'MySignalName',               # min: 1, max: 256
            WorkflowId => 'MyWorkflowId',               # min: 1, max: 256
            Control    => 'MyData',                     # max: 32768; OPTIONAL
            Input      => 'MyData',                     # max: 32768; OPTIONAL
            RunId      => 'MyWorkflowRunIdOptional',    # max: 64; OPTIONAL
          },    # OPTIONAL
          StartChildWorkflowExecutionDecisionAttributes => {
            WorkflowId   => 'MyWorkflowId',    # min: 1, max: 256
            WorkflowType => {
              Name    => 'MyName',             # min: 1, max: 256
              Version => 'MyVersion',          # min: 1, max: 64

            },
            ChildPolicy => 'TERMINATE'
            ,    # values: TERMINATE, REQUEST_CANCEL, ABANDON; OPTIONAL
            Control => 'MyData',    # max: 32768; OPTIONAL
            ExecutionStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            Input      => 'MyData',             # max: 32768; OPTIONAL
            LambdaRole => 'MyArn',              # min: 1, max: 1600; OPTIONAL
            TagList    => [
              'MyTag', ...                      # max: 256
            ],                                  # max: 5; OPTIONAL
            TaskList => {
              Name => 'MyName',                 # min: 1, max: 256

            },    # OPTIONAL
            TaskPriority => 'MyTaskPriority',    # OPTIONAL
            TaskStartToCloseTimeout =>
              'MyDurationInSecondsOptional',     # max: 8; OPTIONAL
          },    # OPTIONAL
          StartTimerDecisionAttributes => {
            StartToFireTimeout => 'MyDurationInSeconds',  # min: 1, max: 8
            TimerId            => 'MyTimerId',            # min: 1, max: 256
            Control            => 'MyData',               # max: 32768; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      ExecutionContext => 'MyData',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/RespondDecisionTaskCompleted>

=head1 ATTRIBUTES


=head2 Decisions => ArrayRef[L<Paws::SimpleWorkflow::Decision>]

The list of decisions (possibly empty) made by the decider while
processing this decision task. See the docs for the Decision structure
for details.



=head2 ExecutionContext => Str

User defined context to add to workflow execution.



=head2 B<REQUIRED> TaskToken => Str

The C<taskToken> from the DecisionTask.

C<taskToken> is generated by the service and should be treated as an
opaque value. If the task is passed to another process, its
C<taskToken> must also be passed. This enables it to provide its
progress and respond with results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RespondDecisionTaskCompleted in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

