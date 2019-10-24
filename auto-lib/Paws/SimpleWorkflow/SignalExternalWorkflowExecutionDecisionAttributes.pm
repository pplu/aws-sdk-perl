# Generated from default/object.tt
package Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw//;
  has Control => (is => 'ro', isa => Str);
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
                               }
             },
  'NameInRequest' => {
                       'RunId' => 'runId',
                       'Control' => 'control',
                       'Input' => 'input',
                       'WorkflowId' => 'workflowId',
                       'SignalName' => 'signalName'
                     },
  'IsRequired' => {
                    'WorkflowId' => 1,
                    'SignalName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes object:

  $service_obj->Method(Att1 => { Control => $value, ..., WorkflowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::SignalExternalWorkflowExecutionDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Provides the details of the C<SignalExternalWorkflowExecution>
decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

=head1 ATTRIBUTES


=head2 Control => Str

  The data attached to the event that can be used by the decider in
subsequent decision tasks.


=head2 Input => Str

  The input data to be provided with the signal. The target workflow
execution uses the signal name and input data to process the signal.


=head2 RunId => Str

  The C<runId> of the workflow execution to be signaled.


=head2 B<REQUIRED> SignalName => Str

  The name of the signal.The target workflow execution uses the signal
name and input to process the signal.


=head2 B<REQUIRED> WorkflowId => Str

  The C<workflowId> of the workflow execution to be signaled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

