package Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', request_name => 'cause', traits => ['NameInRequest']);
  has ExternalInitiatedEventId => (is => 'ro', isa => 'Int', request_name => 'externalInitiatedEventId', traits => ['NameInRequest']);
  has ExternalWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', request_name => 'externalWorkflowExecution', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., ExternalWorkflowExecution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionCancelRequestedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides the details of the C<WorkflowExecutionCancelRequested> event.

=head1 ATTRIBUTES


=head2 Cause => Str

  If set, indicates that the request to cancel the workflow execution was
automatically generated, and specifies the cause. This happens if the
parent workflow execution times out or is terminated, and the child
policy is set to cancel child executions.


=head2 ExternalInitiatedEventId => Int

  The ID of the C<RequestCancelExternalWorkflowExecutionInitiated> event
corresponding to the C<RequestCancelExternalWorkflowExecution> decision
to cancel this workflow execution.The source event with this ID can be
found in the history of the source workflow execution. This information
can be useful for diagnosing problems by tracing back the chain of
events leading up to this event.


=head2 ExternalWorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The external workflow execution for which the cancellation was
requested.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

