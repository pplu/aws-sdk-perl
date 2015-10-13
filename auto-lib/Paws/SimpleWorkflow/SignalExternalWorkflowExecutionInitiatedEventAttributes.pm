package Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes;
  use Moose;
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes object:

  $service_obj->Method(Att1 => { control => $value, ..., workflowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->control

=head1 DESCRIPTION

Provides details of the C<SignalExternalWorkflowExecutionInitiated>
event.

=head1 ATTRIBUTES

=head2 control => Str

  I<Optional.> data attached to the event that can be used by the decider
in subsequent decision tasks.

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<SignalExternalWorkflowExecution>
decision for this signal. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.

=head2 input => Str

  Input provided to the signal (if any).

=head2 runId => Str

  The C<runId> of the external workflow execution to send the signal to.

=head2 B<REQUIRED> signalName => Str

  The name of the signal.

=head2 B<REQUIRED> workflowId => Str

  The C<workflowId> of the external workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

