# Generated from json/callargs_class.tt

package Paws::SSM::SendAutomationSignal;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_AutomationParameterMap/;
  has AutomationExecutionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Payload => (is => 'ro', isa => SSM_AutomationParameterMap, predicate => 1);
  has SignalType => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SendAutomationSignal');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::SendAutomationSignalResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SignalType' => {
                                 'type' => 'Str'
                               },
               'AutomationExecutionId' => {
                                            'type' => 'Str'
                                          },
               'Payload' => {
                              'class' => 'Paws::SSM::AutomationParameterMap',
                              'type' => 'SSM_AutomationParameterMap'
                            }
             },
  'IsRequired' => {
                    'AutomationExecutionId' => 1,
                    'SignalType' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendAutomationSignal - Arguments for method SendAutomationSignal on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendAutomationSignal on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method SendAutomationSignal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendAutomationSignal.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $SendAutomationSignalResult = $ssm->SendAutomationSignal(
      AutomationExecutionId => 'MyAutomationExecutionId',
      SignalType            => 'Approve',
      Payload               => {
        'MyAutomationParameterKey' => [
          'MyAutomationParameterValue', ...    # min: 1, max: 512
        ],    # key: min: 1, max: 50, value: max: 10
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/SendAutomationSignal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutomationExecutionId => Str

The unique identifier for an existing Automation execution that you
want to send the signal to.



=head2 Payload => SSM_AutomationParameterMap

The data sent with the signal. The data schema depends on the type of
signal used in the request.

For C<Approve> and C<Reject> signal types, the payload is an optional
comment that you can send with the signal type. For example:

C<Comment="Looks good">

For C<StartStep> and C<Resume> signal types, you must send the name of
the Automation step to start or resume as the payload. For example:

C<StepName="step1">

For the C<StopStep> signal type, you must send the step execution ID as
the payload. For example:

C<StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab">



=head2 B<REQUIRED> SignalType => Str

The type of signal to send to an Automation execution.

Valid values are: C<"Approve">, C<"Reject">, C<"StartStep">, C<"StopStep">, C<"Resume">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendAutomationSignal in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

