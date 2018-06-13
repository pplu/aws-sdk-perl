
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
          decisionType => 'ScheduleActivityTask'
          , # values: ScheduleActivityTask, RequestCancelActivityTask, CompleteWorkflowExecution, FailWorkflowExecution, CancelWorkflowExecution, ContinueAsNewWorkflowExecution, RecordMarker, StartTimer, CancelTimer, SignalExternalWorkflowExecution, RequestCancelExternalWorkflowExecution, StartChildWorkflowExecution, ScheduleLambdaFunction
          continueAsNewWorkflowExecutionDecisionAttributes => {
            tagList => [
              'MyTag', ...    # max: 256
            ],                # max: 5; OPTIONAL
            taskStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            input => 'MyData',                  # max: 32768; OPTIONAL
            executionStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            lambdaRole   => 'MyArn',            # min: 1, max: 1600; OPTIONAL
            taskPriority => 'MyTaskPriority',   # OPTIONAL
            workflowTypeVersion => 'MyVersion', # min: 1, max: 64
            childPolicy         => 'TERMINATE'
            ,    # values: TERMINATE, REQUEST_CANCEL, ABANDON; OPTIONAL
            taskList => {
              name => 'MyName',    # min: 1, max: 256

            },    # OPTIONAL
          },    # OPTIONAL
          scheduleLambdaFunctionDecisionAttributes => {
            id   => 'MyFunctionId',      # min: 1, max: 256
            name => 'MyFunctionName',    # min: 1, max: 64
            startToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            input   => 'MyFunctionInput',       # max: 32768; OPTIONAL
            control => 'MyData',                # max: 32768; OPTIONAL
          },    # OPTIONAL
          recordMarkerDecisionAttributes => {
            markerName => 'MyMarkerName',    # min: 1, max: 256
            details    => 'MyData',          # max: 32768; OPTIONAL
          },    # OPTIONAL
          signalExternalWorkflowExecutionDecisionAttributes => {
            signalName => 'MySignalName',               # min: 1, max: 256
            workflowId => 'MyWorkflowId',               # min: 1, max: 256
            runId      => 'MyWorkflowRunIdOptional',    # max: 64; OPTIONAL
            input      => 'MyData',                     # max: 32768; OPTIONAL
            control    => 'MyData',                     # max: 32768; OPTIONAL
          },    # OPTIONAL
          requestCancelActivityTaskDecisionAttributes => {
            activityId => 'MyActivityId',    # min: 1, max: 256

          },    # OPTIONAL
          cancelTimerDecisionAttributes => {
            timerId => 'MyTimerId',    # min: 1, max: 256

          },    # OPTIONAL
          cancelWorkflowExecutionDecisionAttributes => {
            details => 'MyData',    # max: 32768; OPTIONAL
          },    # OPTIONAL
          failWorkflowExecutionDecisionAttributes => {
            details => 'MyData',             # max: 32768; OPTIONAL
            reason  => 'MyFailureReason',    # max: 256; OPTIONAL
          },    # OPTIONAL
          startTimerDecisionAttributes => {
            startToFireTimeout => 'MyDurationInSeconds',  # min: 1, max: 8
            timerId            => 'MyTimerId',            # min: 1, max: 256
            control            => 'MyData',               # max: 32768; OPTIONAL
          },    # OPTIONAL
          requestCancelExternalWorkflowExecutionDecisionAttributes => {
            workflowId => 'MyWorkflowId',               # min: 1, max: 256
            runId      => 'MyWorkflowRunIdOptional',    # max: 64; OPTIONAL
            control    => 'MyData',                     # max: 32768; OPTIONAL
          },    # OPTIONAL
          scheduleActivityTaskDecisionAttributes => {
            activityType => {
              name    => 'MyName',       # min: 1, max: 256
              version => 'MyVersion',    # min: 1, max: 64

            },
            activityId => 'MyActivityId',    # min: 1, max: 256
            startToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            input   => 'MyData',                # max: 32768; OPTIONAL
            control => 'MyData',                # max: 32768; OPTIONAL
            heartbeatTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            taskPriority => 'MyTaskPriority',   # OPTIONAL
            scheduleToStartTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            scheduleToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            taskList => {
              name => 'MyName',                 # min: 1, max: 256

            },    # OPTIONAL
          },    # OPTIONAL
          completeWorkflowExecutionDecisionAttributes => {
            result => 'MyData',    # max: 32768; OPTIONAL
          },    # OPTIONAL
          startChildWorkflowExecutionDecisionAttributes => {
            workflowType => {
              version => 'MyVersion',    # min: 1, max: 64
              name    => 'MyName',       # min: 1, max: 256

            },
            workflowId => 'MyWorkflowId',    # min: 1, max: 256
            control    => 'MyData',          # max: 32768; OPTIONAL
            executionStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            input        => 'MyData',           # max: 32768; OPTIONAL
            taskPriority => 'MyTaskPriority',   # OPTIONAL
            lambdaRole   => 'MyArn',            # min: 1, max: 1600; OPTIONAL
            tagList      => [
              'MyTag', ...                      # max: 256
            ],                                  # max: 5; OPTIONAL
            taskStartToCloseTimeout =>
              'MyDurationInSecondsOptional',    # max: 8; OPTIONAL
            childPolicy => 'TERMINATE'
            ,    # values: TERMINATE, REQUEST_CANCEL, ABANDON; OPTIONAL
            taskList => {
              name => 'MyName',    # min: 1, max: 256

            },    # OPTIONAL
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

