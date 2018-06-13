
package Paws::SSM::StopAutomationExecution;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopAutomationExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StopAutomationExecutionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StopAutomationExecution - Arguments for method StopAutomationExecution on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopAutomationExecution on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StopAutomationExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopAutomationExecution.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StopAutomationExecutionResult = $ssm->StopAutomationExecution(
      AutomationExecutionId => 'MyAutomationExecutionId',
      Type                  => 'Complete',                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StopAutomationExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutomationExecutionId => Str

The execution ID of the Automation to stop.



=head2 Type => Str

The stop request type. Valid types include the following: Cancel and
Complete. The default type is Cancel.

Valid values are: C<"Complete">, C<"Cancel">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopAutomationExecution in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

