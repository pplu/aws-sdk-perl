package Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes;
  use Moose;
  has cause => (is => 'ro', isa => 'Str');
  has externalInitiatedEventId => (is => 'ro', isa => 'Int');
  has externalWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes object:

  $service_obj->Method(Att1 => { cause => $value, ..., externalWorkflowExecution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->cause

=head1 ATTRIBUTES

=head2 cause => Str

  

If set, indicates that the request to cancel the workflow execution was
automatically generated, and specifies the cause. This happens if the
parent workflow execution times out or is terminated, and the child
policy is set to cancel child executions.










=head2 externalInitiatedEventId => Int

  

The ID of the C<RequestCancelExternalWorkflowExecutionInitiated> event
corresponding to the C<RequestCancelExternalWorkflowExecution> decision
to cancel this workflow execution.The source event with this ID can be
found in the history of the source workflow execution. This information
can be useful for diagnosing problems by tracing back the chain of
events leading up to this event.










=head2 externalWorkflowExecution => Paws::SimpleWorkflow::WorkflowExecution

  

The external workflow execution for which the cancellation was
requested.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

