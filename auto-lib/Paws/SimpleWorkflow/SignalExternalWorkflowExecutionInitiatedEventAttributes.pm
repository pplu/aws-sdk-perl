# Generated from default/object.tt
package Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw//;
  has Control => (is => 'ro', isa => Str);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);
  has Input => (is => 'ro', isa => Str);
  has RunId => (is => 'ro', isa => Str);
  has SignalName => (is => 'ro', isa => Str, required => 1);
  has WorkflowId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunId' => {
                            'type' => 'Str'
                          },
               'Control' => {
                              'type' => 'Str'
                            },
               'Input' => {
                            'type' => 'Str'
                          },
               'WorkflowId' => {
                                 'type' => 'Str'
                               },
               'SignalName' => {
                                 'type' => 'Str'
                               },
               'DecisionTaskCompletedEventId' => {
                                                   'type' => 'Int'
                                                 }
             },
  'NameInRequest' => {
                       'RunId' => 'runId',
                       'Control' => 'control',
                       'Input' => 'input',
                       'WorkflowId' => 'workflowId',
                       'SignalName' => 'signalName',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'WorkflowId' => 1,
                    'SignalName' => 1,
                    'DecisionTaskCompletedEventId' => 1
                  }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { Control => $value, ..., WorkflowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::SignalExternalWorkflowExecutionInitiatedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Provides the details of the C<SignalExternalWorkflowExecutionInitiated>
event.

=head1 ATTRIBUTES


=head2 Control => Str

  Data attached to the event that can be used by the decider in
subsequent decision tasks.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<SignalExternalWorkflowExecution>
decision for this signal. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.


=head2 Input => Str

  The input provided to the signal.


=head2 RunId => Str

  The C<runId> of the external workflow execution to send the signal to.


=head2 B<REQUIRED> SignalName => Str

  The name of the signal.


=head2 B<REQUIRED> WorkflowId => Str

  The C<workflowId> of the external workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

