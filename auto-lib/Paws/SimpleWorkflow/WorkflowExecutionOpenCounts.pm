package Paws::SimpleWorkflow::WorkflowExecutionOpenCounts;
  use Moose;
  has OpenActivityTasks => (is => 'ro', isa => 'Int', request_name => 'openActivityTasks', traits => ['NameInRequest'], required => 1);
  has OpenChildWorkflowExecutions => (is => 'ro', isa => 'Int', request_name => 'openChildWorkflowExecutions', traits => ['NameInRequest'], required => 1);
  has OpenDecisionTasks => (is => 'ro', isa => 'Int', request_name => 'openDecisionTasks', traits => ['NameInRequest'], required => 1);
  has OpenLambdaFunctions => (is => 'ro', isa => 'Int', request_name => 'openLambdaFunctions', traits => ['NameInRequest']);
  has OpenTimers => (is => 'ro', isa => 'Int', request_name => 'openTimers', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionOpenCounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionOpenCounts object:

  $service_obj->Method(Att1 => { OpenActivityTasks => $value, ..., OpenTimers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionOpenCounts object:

  $result = $service_obj->Method(...);
  $result->Att1->OpenActivityTasks

=head1 DESCRIPTION

Contains the counts of open tasks, child workflow executions and timers
for a workflow execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenActivityTasks => Int

  The count of activity tasks whose status is C<OPEN>.


=head2 B<REQUIRED> OpenChildWorkflowExecutions => Int

  The count of child workflow executions whose status is C<OPEN>.


=head2 B<REQUIRED> OpenDecisionTasks => Int

  The count of decision tasks whose status is OPEN. A workflow execution
can have at most one open decision task.


=head2 OpenLambdaFunctions => Int

  The count of Lambda tasks whose status is C<OPEN>.


=head2 B<REQUIRED> OpenTimers => Int

  The count of timers started by this workflow execution that have not
fired yet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

