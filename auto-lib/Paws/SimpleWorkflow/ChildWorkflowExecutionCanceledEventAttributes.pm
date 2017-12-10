package Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', request_name => 'details', traits => ['NameInRequest']);
  has InitiatedEventId => (is => 'ro', isa => 'Int', request_name => 'initiatedEventId', traits => ['NameInRequest'], required => 1);
  has StartedEventId => (is => 'ro', isa => 'Int', request_name => 'startedEventId', traits => ['NameInRequest'], required => 1);
  has WorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', request_name => 'workflowExecution', traits => ['NameInRequest'], required => 1);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', request_name => 'workflowType', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes object:

  $service_obj->Method(Att1 => { Details => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ChildWorkflowExecutionCanceledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Provide details of the C<ChildWorkflowExecutionCanceled> event.

=head1 ATTRIBUTES


=head2 Details => Str

  Details of the cancellation (if provided).


=head2 B<REQUIRED> InitiatedEventId => Int

  The ID of the C<StartChildWorkflowExecutionInitiated> event
corresponding to the C<StartChildWorkflowExecution> Decision to start
this child workflow execution. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<ChildWorkflowExecutionStarted> event recorded when this
child workflow execution was started. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.


=head2 B<REQUIRED> WorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The child workflow execution that was canceled.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

