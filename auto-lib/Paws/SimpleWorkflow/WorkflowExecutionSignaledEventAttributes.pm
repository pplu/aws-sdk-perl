package Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes;
  use Moose;
  has ExternalInitiatedEventId => (is => 'ro', isa => 'Int', request_name => 'externalInitiatedEventId', traits => ['NameInRequest']);
  has ExternalWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', request_name => 'externalWorkflowExecution', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has SignalName => (is => 'ro', isa => 'Str', request_name => 'signalName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes object:

  $service_obj->Method(Att1 => { ExternalInitiatedEventId => $value, ..., SignalName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionSignaledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalInitiatedEventId

=head1 DESCRIPTION

Provides the details of the C<WorkflowExecutionSignaled> event.

=head1 ATTRIBUTES


=head2 ExternalInitiatedEventId => Int

  The ID of the C<SignalExternalWorkflowExecutionInitiated> event
corresponding to the C<SignalExternalWorkflow> decision to signal this
workflow execution.The source event with this ID can be found in the
history of the source workflow execution. This information can be
useful for diagnosing problems by tracing back the chain of events
leading up to this event. This field is set only if the signal was
initiated by another workflow execution.


=head2 ExternalWorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The workflow execution that sent the signal. This is set only of the
signal was sent by another workflow execution.


=head2 Input => Str

  The inputs provided with the signal. The decider can use the signal
name and inputs to determine how to process the signal.


=head2 B<REQUIRED> SignalName => Str

  The name of the signal received. The decider can use the signal name
and inputs to determine how to the process the signal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

