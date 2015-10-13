package Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes;
  use Moose;
  has cause => (is => 'ro', isa => 'Str');
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes object:

  $service_obj->Method(Att1 => { cause => $value, ..., reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionTerminatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->cause

=head1 DESCRIPTION

Provides details of the C<WorkflowExecutionTerminated> event.

=head1 ATTRIBUTES

=head2 cause => Str

  If set, indicates that the workflow execution was automatically
terminated, and specifies the cause. This happens if the parent
workflow execution times out or is terminated and the child policy is
set to terminate child executions.

=head2 B<REQUIRED> childPolicy => Str

  The policy used for the child workflow executions of this workflow
execution.

The supported child policies are:

=over

=item * B<TERMINATE:> the child executions will be terminated.

=item * B<REQUEST_CANCEL:> a request to cancel will be attempted for
each child execution by recording a C<WorkflowExecutionCancelRequested>
event in its history. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

=item * B<ABANDON:> no action will be taken. The child executions will
continue to run.

=back

=head2 details => Str

  The details provided for the termination (if any).

=head2 reason => Str

  The reason provided for the termination (if any).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

