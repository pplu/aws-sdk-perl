package Paws::StepFunctions::HistoryEvent;
  use Moose;
  has ActivityFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityFailedEventDetails', xmlname => 'activityFailedEventDetails', request_name => 'activityFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ActivityScheduledEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityScheduledEventDetails', xmlname => 'activityScheduledEventDetails', request_name => 'activityScheduledEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ActivityScheduleFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityScheduleFailedEventDetails', xmlname => 'activityScheduleFailedEventDetails', request_name => 'activityScheduleFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ActivityStartedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityStartedEventDetails', xmlname => 'activityStartedEventDetails', request_name => 'activityStartedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ActivitySucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivitySucceededEventDetails', xmlname => 'activitySucceededEventDetails', request_name => 'activitySucceededEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ActivityTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ActivityTimedOutEventDetails', xmlname => 'activityTimedOutEventDetails', request_name => 'activityTimedOutEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ExecutionAbortedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionAbortedEventDetails', xmlname => 'executionAbortedEventDetails', request_name => 'executionAbortedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ExecutionFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionFailedEventDetails', xmlname => 'executionFailedEventDetails', request_name => 'executionFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ExecutionStartedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionStartedEventDetails', xmlname => 'executionStartedEventDetails', request_name => 'executionStartedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ExecutionSucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionSucceededEventDetails', xmlname => 'executionSucceededEventDetails', request_name => 'executionSucceededEventDetails', traits => ['Unwrapped','NameInRequest']);
  has ExecutionTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::ExecutionTimedOutEventDetails', xmlname => 'executionTimedOutEventDetails', request_name => 'executionTimedOutEventDetails', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Int', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest'], required => 1);
  has LambdaFunctionFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionFailedEventDetails', xmlname => 'lambdaFunctionFailedEventDetails', request_name => 'lambdaFunctionFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionScheduledEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionScheduledEventDetails', xmlname => 'lambdaFunctionScheduledEventDetails', request_name => 'lambdaFunctionScheduledEventDetails', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionScheduleFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionScheduleFailedEventDetails', xmlname => 'lambdaFunctionScheduleFailedEventDetails', request_name => 'lambdaFunctionScheduleFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionStartFailedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionStartFailedEventDetails', xmlname => 'lambdaFunctionStartFailedEventDetails', request_name => 'lambdaFunctionStartFailedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionSucceededEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionSucceededEventDetails', xmlname => 'lambdaFunctionSucceededEventDetails', request_name => 'lambdaFunctionSucceededEventDetails', traits => ['Unwrapped','NameInRequest']);
  has LambdaFunctionTimedOutEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::LambdaFunctionTimedOutEventDetails', xmlname => 'lambdaFunctionTimedOutEventDetails', request_name => 'lambdaFunctionTimedOutEventDetails', traits => ['Unwrapped','NameInRequest']);
  has PreviousEventId => (is => 'ro', isa => 'Int', xmlname => 'previousEventId', request_name => 'previousEventId', traits => ['Unwrapped','NameInRequest']);
  has StateEnteredEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::StateEnteredEventDetails', xmlname => 'stateEnteredEventDetails', request_name => 'stateEnteredEventDetails', traits => ['Unwrapped','NameInRequest']);
  has StateExitedEventDetails => (is => 'ro', isa => 'Paws::StepFunctions::StateExitedEventDetails', xmlname => 'stateExitedEventDetails', request_name => 'stateExitedEventDetails', traits => ['Unwrapped','NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', xmlname => 'timestamp', request_name => 'timestamp', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest'], required => 1);
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

This class has no description

=head1 ATTRIBUTES


=head2 ActivityFailedEventDetails => L<Paws::StepFunctions::ActivityFailedEventDetails>

  


=head2 ActivityScheduledEventDetails => L<Paws::StepFunctions::ActivityScheduledEventDetails>

  


=head2 ActivityScheduleFailedEventDetails => L<Paws::StepFunctions::ActivityScheduleFailedEventDetails>

  


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

  


=head2 LambdaFunctionSucceededEventDetails => L<Paws::StepFunctions::LambdaFunctionSucceededEventDetails>

  


=head2 LambdaFunctionTimedOutEventDetails => L<Paws::StepFunctions::LambdaFunctionTimedOutEventDetails>

  


=head2 PreviousEventId => Int

  The id of the previous event.


=head2 StateEnteredEventDetails => L<Paws::StepFunctions::StateEnteredEventDetails>

  


=head2 StateExitedEventDetails => L<Paws::StepFunctions::StateExitedEventDetails>

  


=head2 B<REQUIRED> Timestamp => Str

  The date the event occured.


=head2 B<REQUIRED> Type => Str

  The type of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

