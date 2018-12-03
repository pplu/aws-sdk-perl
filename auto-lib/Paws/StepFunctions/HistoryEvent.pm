package Paws::StepFunctions::HistoryEvent;
  use Moose;
  has ActivityFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityFailedEventDetails', request_name => 'activityFailedEventDetails', traits => ['NameInRequest']);
  has ActivityScheduledEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityScheduledEventDetails', request_name => 'activityScheduledEventDetails', traits => ['NameInRequest']);
  has ActivityScheduleFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityScheduleFailedEventDetails', request_name => 'activityScheduleFailedEventDetails', traits => ['NameInRequest']);
  has ActivityStartedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityStartedEventDetails', request_name => 'activityStartedEventDetails', traits => ['NameInRequest']);
  has ActivitySucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivitySucceededEventDetails', request_name => 'activitySucceededEventDetails', traits => ['NameInRequest']);
  has ActivityTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityTimedOutEventDetails', request_name => 'activityTimedOutEventDetails', traits => ['NameInRequest']);
  has ExecutionAbortedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionAbortedEventDetails', request_name => 'executionAbortedEventDetails', traits => ['NameInRequest']);
  has ExecutionFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionFailedEventDetails', request_name => 'executionFailedEventDetails', traits => ['NameInRequest']);
  has ExecutionStartedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionStartedEventDetails', request_name => 'executionStartedEventDetails', traits => ['NameInRequest']);
  has ExecutionSucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionSucceededEventDetails', request_name => 'executionSucceededEventDetails', traits => ['NameInRequest']);
  has ExecutionTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionTimedOutEventDetails', request_name => 'executionTimedOutEventDetails', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Int', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has LambdaFunctionFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionFailedEventDetails', request_name => 'lambdaFunctionFailedEventDetails', traits => ['NameInRequest']);
  has LambdaFunctionScheduledEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionScheduledEventDetails', request_name => 'lambdaFunctionScheduledEventDetails', traits => ['NameInRequest']);
  has LambdaFunctionScheduleFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionScheduleFailedEventDetails', request_name => 'lambdaFunctionScheduleFailedEventDetails', traits => ['NameInRequest']);
  has LambdaFunctionStartFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionStartFailedEventDetails', request_name => 'lambdaFunctionStartFailedEventDetails', traits => ['NameInRequest']);
  has LambdaFunctionSucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionSucceededEventDetails', request_name => 'lambdaFunctionSucceededEventDetails', traits => ['NameInRequest']);
  has LambdaFunctionTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionTimedOutEventDetails', request_name => 'lambdaFunctionTimedOutEventDetails', traits => ['NameInRequest']);
  has PreviousEventId => (is => 'ro', isa => 'Int', request_name => 'previousEventId', traits => ['NameInRequest']);
  has StateEnteredEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::StateEnteredEventDetails', request_name => 'stateEnteredEventDetails', traits => ['NameInRequest']);
  has StateExitedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::StateExitedEventDetails', request_name => 'stateExitedEventDetails', traits => ['NameInRequest']);
  has TaskFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskFailedEventDetails', request_name => 'taskFailedEventDetails', traits => ['NameInRequest']);
  has TaskScheduledEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskScheduledEventDetails', request_name => 'taskScheduledEventDetails', traits => ['NameInRequest']);
  has TaskStartedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskStartedEventDetails', request_name => 'taskStartedEventDetails', traits => ['NameInRequest']);
  has TaskStartFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskStartFailedEventDetails', request_name => 'taskStartFailedEventDetails', traits => ['NameInRequest']);
  has TaskSubmitFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskSubmitFailedEventDetails', request_name => 'taskSubmitFailedEventDetails', traits => ['NameInRequest']);
  has TaskSubmittedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskSubmittedEventDetails', request_name => 'taskSubmittedEventDetails', traits => ['NameInRequest']);
  has TaskSucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskSucceededEventDetails', request_name => 'taskSucceededEventDetails', traits => ['NameInRequest']);
  has TaskTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::TaskTimedOutEventDetails', request_name => 'taskTimedOutEventDetails', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::HistoryEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::HistoryEvent object:

  $service_obj->Method(Att1 => { ActivityFailedEventDetails => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::HistoryEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityFailedEventDetails

=head1 DESCRIPTION

Contains details about the events of an execution.

=head1 ATTRIBUTES


=head2 ActivityFailedEventDetails => L<Paws::StepFunctions::ActivityFailedEventDetails>

  


=head2 ActivityScheduledEventDetails => L<Paws::StepFunctions::ActivityScheduledEventDetails>

  


=head2 ActivityScheduleFailedEventDetails => L<Paws::StepFunctions::ActivityScheduleFailedEventDetails>

  Contains details about an activity schedule event that failed during an
execution.


=head2 ActivityStartedEventDetails => L<Paws::StepFunctions::ActivityStartedEventDetails>

  


=head2 ActivitySucceededEventDetails => L<Paws::StepFunctions::ActivitySucceededEventDetails>

  


=head2 ActivityTimedOutEventDetails => L<Paws::StepFunctions::ActivityTimedOutEventDetails>

  


=head2 ExecutionAbortedEventDetails => L<Paws::StepFunctions::ExecutionAbortedEventDetails>

  


=head2 ExecutionFailedEventDetails => L<Paws::StepFunctions::ExecutionFailedEventDetails>

  


=head2 ExecutionStartedEventDetails => L<Paws::StepFunctions::ExecutionStartedEventDetails>

  


=head2 ExecutionSucceededEventDetails => L<Paws::StepFunctions::ExecutionSucceededEventDetails>

  


=head2 ExecutionTimedOutEventDetails => L<Paws::StepFunctions::ExecutionTimedOutEventDetails>

  


=head2 B<REQUIRED> Id => Int

  The id of the event. Events are numbered sequentially, starting at one.


=head2 LambdaFunctionFailedEventDetails => L<Paws::StepFunctions::LambdaFunctionFailedEventDetails>

  


=head2 LambdaFunctionScheduledEventDetails => L<Paws::StepFunctions::LambdaFunctionScheduledEventDetails>

  


=head2 LambdaFunctionScheduleFailedEventDetails => L<Paws::StepFunctions::LambdaFunctionScheduleFailedEventDetails>

  


=head2 LambdaFunctionStartFailedEventDetails => L<Paws::StepFunctions::LambdaFunctionStartFailedEventDetails>

  Contains details about a lambda function that failed to start during an
execution.


=head2 LambdaFunctionSucceededEventDetails => L<Paws::StepFunctions::LambdaFunctionSucceededEventDetails>

  Contains details about a lambda function that terminated successfully
during an execution.


=head2 LambdaFunctionTimedOutEventDetails => L<Paws::StepFunctions::LambdaFunctionTimedOutEventDetails>

  


=head2 PreviousEventId => Int

  The id of the previous event.


=head2 StateEnteredEventDetails => L<Paws::StepFunctions::StateEnteredEventDetails>

  


=head2 StateExitedEventDetails => L<Paws::StepFunctions::StateExitedEventDetails>

  


=head2 TaskFailedEventDetails => L<Paws::StepFunctions::TaskFailedEventDetails>

  


=head2 TaskScheduledEventDetails => L<Paws::StepFunctions::TaskScheduledEventDetails>

  


=head2 TaskStartedEventDetails => L<Paws::StepFunctions::TaskStartedEventDetails>

  


=head2 TaskStartFailedEventDetails => L<Paws::StepFunctions::TaskStartFailedEventDetails>

  


=head2 TaskSubmitFailedEventDetails => L<Paws::StepFunctions::TaskSubmitFailedEventDetails>

  


=head2 TaskSubmittedEventDetails => L<Paws::StepFunctions::TaskSubmittedEventDetails>

  


=head2 TaskSucceededEventDetails => L<Paws::StepFunctions::TaskSucceededEventDetails>

  


=head2 TaskTimedOutEventDetails => L<Paws::StepFunctions::TaskTimedOutEventDetails>

  


=head2 B<REQUIRED> Timestamp => Str

  The date and time the event occurred.


=head2 B<REQUIRED> Type => Str

  The type of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

