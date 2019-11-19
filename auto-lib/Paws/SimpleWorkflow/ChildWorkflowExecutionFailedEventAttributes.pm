# Generated from default/object.tt
package Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType SimpleWorkflow_WorkflowExecution/;
  has Details => (is => 'ro', isa => Str);
  has InitiatedEventId => (is => 'ro', isa => Int, required => 1);
  has Reason => (is => 'ro', isa => Str);
  has StartedEventId => (is => 'ro', isa => Int, required => 1);
  has WorkflowExecution => (is => 'ro', isa => SimpleWorkflow_WorkflowExecution, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InitiatedEventId' => {
                                       'type' => 'Int'
                                     },
               'Reason' => {
                             'type' => 'Str'
                           },
               'StartedEventId' => {
                                     'type' => 'Int'
                                   },
               'Details' => {
                              'type' => 'Str'
                            },
               'WorkflowType' => {
                                   'type' => 'SimpleWorkflow_WorkflowType',
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType'
                                 },
               'WorkflowExecution' => {
                                        'class' => 'Paws::SimpleWorkflow::WorkflowExecution',
                                        'type' => 'SimpleWorkflow_WorkflowExecution'
                                      }
             },
  'IsRequired' => {
                    'InitiatedEventId' => 1,
                    'StartedEventId' => 1,
                    'WorkflowType' => 1,
                    'WorkflowExecution' => 1
                  },
  'NameInRequest' => {
                       'InitiatedEventId' => 'initiatedEventId',
                       'Reason' => 'reason',
                       'Details' => 'details',
                       'StartedEventId' => 'startedEventId',
                       'WorkflowType' => 'workflowType',
                       'WorkflowExecution' => 'workflowExecution'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Details => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ChildWorkflowExecutionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Provides the details of the C<ChildWorkflowExecutionFailed> event.

=head1 ATTRIBUTES


=head2 Details => Str

  The details of the failure (if provided).


=head2 B<REQUIRED> InitiatedEventId => Int

  The ID of the C<StartChildWorkflowExecutionInitiated> event
corresponding to the C<StartChildWorkflowExecution> Decision to start
this child workflow execution. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.


=head2 Reason => Str

  The reason for the failure (if provided).


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<ChildWorkflowExecutionStarted> event recorded when this
child workflow execution was started. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.


=head2 B<REQUIRED> WorkflowExecution => SimpleWorkflow_WorkflowExecution

  The child workflow execution that failed.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The type of the child workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

