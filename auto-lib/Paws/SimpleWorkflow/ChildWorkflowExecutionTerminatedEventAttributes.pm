# Generated from default/object.tt
package Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_WorkflowExecution/;
  has InitiatedEventId => (is => 'ro', isa => Int, required => 1);
  has StartedEventId => (is => 'ro', isa => Int, required => 1);
  has WorkflowExecution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartedEventId' => {
                                     'type' => 'Int'
                                   },
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 },
               'InitiatedEventId' => {
                                       'type' => 'Int'
                                     },
               'WorkflowExecution' => {
                                        'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                        'type' => 'SimpleWorkflow_WorkflowExecution'
                                      }
             },
  'NameInRequest' => {
                       'StartedEventId' => 'startedEventId',
                       'WorkflowType' => 'workflowType',
                       'InitiatedEventId' => 'initiatedEventId',
                       'WorkflowExecution' => 'workflowExecution'
                     },
  'IsRequired' => {
                    'StartedEventId' => 1,
                    'WorkflowType' => 1,
                    'InitiatedEventId' => 1,
                    'WorkflowExecution' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes object:

  $service_obj->Method(Att1 => { InitiatedEventId => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ChildWorkflowExecutionTerminatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->InitiatedEventId

=head1 DESCRIPTION

Provides the details of the C<ChildWorkflowExecutionTerminated> event.

=head1 ATTRIBUTES


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


=head2 B<REQUIRED> WorkflowExecution => SimpleWorkflow_WorkflowExecution

  The child workflow execution that was terminated.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

