package Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes;
  use Moose;
  has initiatedEventId => (is => 'ro', isa => 'Int', required => 1);
  has result => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Int', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes object:

  $service_obj->Method(Att1 => { initiatedEventId => $value, ..., workflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ChildWorkflowExecutionCompletedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->initiatedEventId

=head1 DESCRIPTION

Provides details of the C<ChildWorkflowExecutionCompleted> event.

=head1 ATTRIBUTES

=head2 B<REQUIRED> initiatedEventId => Int

  The ID of the C<StartChildWorkflowExecutionInitiated> event
corresponding to the C<StartChildWorkflowExecution> decision to start
this child workflow execution. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.

=head2 result => Str

  The result of the child workflow execution (if any).

=head2 B<REQUIRED> startedEventId => Int

  The ID of the C<ChildWorkflowExecutionStarted> event recorded when this
child workflow execution was started. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.

=head2 B<REQUIRED> workflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The child workflow execution that was completed.

=head2 B<REQUIRED> workflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

